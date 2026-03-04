import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_chat_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_add_participant_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_create_room_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_send_message_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/chat_response_model.dart';

part 'admin_chat_event.dart';
part 'admin_chat_state.dart';
part 'admin_chat_bloc.freezed.dart';

class AdminChatBloc extends Bloc<AdminChatEvent, AdminChatState> {
 final AdminChatRemoteDatasource remote;

  AdminChatBloc(this.remote) : super(const AdminChatState.initial()) {
    on<_GetRooms>(_onGetRooms);
    on<_CreateRoom>(_onCreateRoom);

    on<_OpenRoom>(_onOpenRoom);
    on<_LoadMoreMessages>(_onLoadMoreMessages);
    on<_SendMessage>(_onSendMessage);

    on<_AddParticipant>(_onAddParticipant);
    on<_RemoveParticipant>(_onRemoveParticipant);
  }

  // cache messages per room
  int? _activeRoomId;
  final List<ChatMessageModel> _messages = [];
  int _page = 1;
  int _perPage = 20;
  bool _canLoadMore = false;

  Future<void> _onGetRooms(_GetRooms e, Emitter<AdminChatState> emit) async {
    emit(const AdminChatState.roomsLoading());
    final res = await remote.rooms();
    res.fold(
      (l) => emit(AdminChatState.error(l)),
      (r) => emit(AdminChatState.roomsLoaded(r.data)),
    );
  }

  Future<void> _onCreateRoom(_CreateRoom e, Emitter<AdminChatState> emit) async {
    emit(const AdminChatState.actionLoading());
    final res = await remote.createRoom(e.request);
    res.fold(
      (l) => emit(AdminChatState.actionError(l)),
      (r) => emit(AdminChatState.actionSuccess(r.message ?? 'Room siap')),
    );
  }

  Future<void> _onOpenRoom(_OpenRoom e, Emitter<AdminChatState> emit) async {
    _activeRoomId = e.roomId;
    _messages.clear();
    _page = 1;
    _perPage = e.perPage;

    emit(const AdminChatState.messagesLoading());
    final res = await remote.messages(roomId: e.roomId, page: 1, perPage: _perPage);

    res.fold(
      (l) => emit(AdminChatState.error(l)),
      (r) {
        final pag = r.data;
        // API kamu orderBy desc -> terbaru di atas, biarkan UI reverse nanti
        _messages.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? 1;
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminChatState.messagesLoaded(
          roomId: e.roomId,
          items: List.unmodifiable(_messages),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
        ));
      },
    );
  }

  Future<void> _onLoadMoreMessages(_LoadMoreMessages e, Emitter<AdminChatState> emit) async {
    if (_activeRoomId == null || !_canLoadMore) return;

    emit(AdminChatState.messagesLoadingMore(
      roomId: _activeRoomId!,
      items: List.unmodifiable(_messages),
      page: _page,
      perPage: _perPage,
      canLoadMore: _canLoadMore,
    ));

    final res = await remote.messages(roomId: _activeRoomId!, page: _page + 1, perPage: _perPage);

    res.fold(
      (l) => emit(AdminChatState.error(l)),
      (r) {
        final pag = r.data;
        _messages.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? (_page + 1);
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminChatState.messagesLoaded(
          roomId: _activeRoomId!,
          items: List.unmodifiable(_messages),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
        ));
      },
    );
  }

  Future<void> _onSendMessage(_SendMessage e, Emitter<AdminChatState> emit) async {
    emit(const AdminChatState.actionLoading());
    final res = await remote.sendMessage(roomId: e.roomId, req: e.request);
    res.fold(
      (l) => emit(AdminChatState.actionError(l)),
      (r) => emit(AdminChatState.actionSuccess(r.message ?? 'Pesan terkirim')),
    );
  }

  Future<void> _onAddParticipant(_AddParticipant e, Emitter<AdminChatState> emit) async {
    emit(const AdminChatState.actionLoading());
    final res = await remote.addParticipant(roomId: e.roomId, req: e.request);
    res.fold(
      (l) => emit(AdminChatState.actionError(l)),
      (r) => emit(AdminChatState.actionSuccess(r.message ?? 'Participant ditambahkan')),
    );
  }

  Future<void> _onRemoveParticipant(_RemoveParticipant e, Emitter<AdminChatState> emit) async {
    emit(const AdminChatState.actionLoading());
    final res = await remote.removeParticipant(roomId: e.roomId, userId: e.userId);
    res.fold(
      (l) => emit(AdminChatState.actionError(l)),
      (r) => emit(AdminChatState.actionSuccess(r.message ?? 'Participant dihapus')),
    );
  }
}
