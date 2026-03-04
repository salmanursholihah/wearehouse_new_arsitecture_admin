part of 'admin_chat_bloc.dart';

@freezed
class AdminChatState with _$AdminChatState {
  const factory AdminChatState.initial() = _Initial;

  // rooms
  const factory AdminChatState.roomsLoading() = _RoomsLoading;
  const factory AdminChatState.roomsLoaded(List<ChatRoomModel> rooms) = _RoomsLoaded;

  // messages
  const factory AdminChatState.messagesLoading() = _MessagesLoading;

  const factory AdminChatState.messagesLoaded({
    required int roomId,
    required List<ChatMessageModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
  }) = _MessagesLoaded;

  const factory AdminChatState.messagesLoadingMore({
    required int roomId,
    required List<ChatMessageModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
  }) = _MessagesLoadingMore;

  // action
  const factory AdminChatState.actionLoading() = _ActionLoading;
  const factory AdminChatState.actionSuccess(String message) = _ActionSuccess;
  const factory AdminChatState.actionError(String message) = _ActionError;

  const factory AdminChatState.error(String message) = _Error;
}
