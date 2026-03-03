part of 'admin_logout_bloc.dart';

@freezed
class AdminLogoutState with _$AdminLogoutState {
  const factory AdminLogoutState.initial() = _Initial;
 const factory AdminLogoutState.loading() = _Loading;
  const factory AdminLogoutState.success(String message) = _Success;
  const factory AdminLogoutState.error(String message) = _Error;
}