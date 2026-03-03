import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_user_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_user_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_user_response_model.dart';
part 'admin_user_event.dart';
part 'admin_user_state.dart';
part 'admin_user_bloc.freezed.dart';

class AdminUserBloc extends Bloc<AdminUserEvent, AdminUserState> {
 final AdminUserRemoteDatasource remote;

  AdminUserBloc(this.remote) : super(const AdminUserState.initial()) {
    on<_GetList>(_onGetList);
    on<_GetDetail>(_onGetDetail);
    on<_Update>(_onUpdate);
    on<_Activate>(_onActivate);
    on<_Deactivate>(_onDeactivate);
  }

  final List<AdminUserModel> _items = [];
  int _page = 1;
  bool _canLoadMore = false;
  int _perPage = 10;

  Future<void> _onGetList(_GetList event, Emitter<AdminUserState> emit) async {
    if (event.isRefresh) {
      _items.clear();
      _page = 1;
      _canLoadMore = false;
      _perPage = event.perPage;
    }

    emit(const AdminUserState.loading());

    final result = await remote.getUsers(perPage: event.perPage, page: event.page);

    result.fold(
      (l) => emit(AdminUserState.error(l)),
      (r) {
        final pag = r.data;
        final newItems = pag?.data ?? [];

        if (event.page == 1) _items.clear();
        _items.addAll(newItems);

        _page = pag?.currentPage ?? event.page;
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminUserState.listLoaded(
          items: List.unmodifiable(_items),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
        ));
      },
    );
  }
  

  Future<void> _onGetDetail(_GetDetail event, Emitter<AdminUserState> emit) async {
    emit(const AdminUserState.loading());
    final result = await remote.getUserDetail(event.id);

    result.fold(
      (l) => emit(AdminUserState.error(l)),
      (r) => emit(AdminUserState.detailLoaded(r.data)),
    );
  }

  Future<void> _onUpdate(_Update event, Emitter<AdminUserState> emit) async {
    emit(const AdminUserState.loading());
    final result = await remote.updateUser(event.id, event.request);

    result.fold(
      (l) => emit(AdminUserState.error(l)),
      (r) => emit(AdminUserState.success(r.message ?? 'Berhasil update user')),
    );
  }

  Future<void> _onActivate(_Activate event, Emitter<AdminUserState> emit) async {
    emit(const AdminUserState.loading());
    final result = await remote.activate(event.id);

    result.fold(
      (l) => emit(AdminUserState.error(l)),
      (r) => emit(AdminUserState.success(r.message ?? 'User diaktifkan')),
    );
  }

  Future<void> _onDeactivate(_Deactivate event, Emitter<AdminUserState> emit) async {
    emit(const AdminUserState.loading());
    final result = await remote.deactivate(event.id);

    result.fold(
      (l) => emit(AdminUserState.error(l)),
      (r) => emit(AdminUserState.success(r.message ?? 'User dinonaktifkan')),
    );
  }
}