part of 'admin_login_bloc.dart';

@freezed
class AdminLoginEvent with _$AdminLoginEvent {
  const factory AdminLoginEvent.started() = _Started;
 const factory AdminLoginEvent.login(AdminLoginRequestModel request) = _Login;
  const factory AdminLoginEvent.reset() = _Reset;
}