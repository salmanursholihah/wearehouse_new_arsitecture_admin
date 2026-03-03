part of 'admin_user_bloc.dart';

@freezed
class AdminUserState with _$AdminUserState {
  const factory AdminUserState.initial() = _Initial;
  const factory AdminUserState.loading() = _Loading;

  const factory AdminUserState.listLoaded({
    required List<AdminUserModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
  }) = _ListLoaded;

  const factory AdminUserState.detailLoaded(AdminUserModel? user) =
      _DetailLoaded;

  const factory AdminUserState.success(String message) = _Success;
  const factory AdminUserState.error(String message) = _Error;
}
