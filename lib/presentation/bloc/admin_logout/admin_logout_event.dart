part of 'admin_logout_bloc.dart';

@freezed
class AdminLogoutEvent with _$AdminLogoutEvent {
  const factory AdminLogoutEvent.started() = _Started;
  const factory AdminLogoutEvent.logout() = _Logout;
}