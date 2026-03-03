part of 'admin_register_bloc.dart';

@freezed
class AdminRegisterState with _$AdminRegisterState {
  const factory AdminRegisterState.initial() = _Initial;
  const factory AdminRegisterState.loading() = _Loading;
  const factory AdminRegisterState.loaded(AdminRegisterResponseModel data) =
      _Loaded;
  const factory AdminRegisterState.error(String message) = _Error;
}
