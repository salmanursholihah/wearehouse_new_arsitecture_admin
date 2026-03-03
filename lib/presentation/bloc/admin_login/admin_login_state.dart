part of 'admin_login_bloc.dart';

@freezed
class AdminLoginState with _$AdminLoginState {
  const factory AdminLoginState.initial() = _Initial;
  const factory AdminLoginState.loading() = _Loading;
  const factory AdminLoginState.loaded(AdminAuthResponseModel data) = _Loaded;
  const factory AdminLoginState.error(String message) = _Error;
}