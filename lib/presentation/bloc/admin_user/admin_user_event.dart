part of 'admin_user_bloc.dart';

@freezed
class AdminUserEvent with _$AdminUserEvent {
  const factory AdminUserEvent.started() = _Started;
const factory AdminUserEvent.getList({
    @Default(1) int page,
    @Default(10) int perPage,
    @Default(false) bool isRefresh,
  }) = _GetList;

  const factory AdminUserEvent.getDetail(int id) = _GetDetail;

  const factory AdminUserEvent.update(
    int id,
    AdminUserUpdateRequestModel request,
  ) = _Update;

  const factory AdminUserEvent.activate(int id) = _Activate;

  const factory AdminUserEvent.deactivate(int id) = _Deactivate;
}