part of 'admin_register_bloc.dart';

@freezed
class AdminRegisterEvent with _$AdminRegisterEvent {
  const factory AdminRegisterEvent.started() = _Started;
  const factory AdminRegisterEvent.register(AdminRegisterRequestModel request) =
      _Register;
}
