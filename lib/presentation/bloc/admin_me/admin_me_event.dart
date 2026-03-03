part of 'admin_me_bloc.dart';

@freezed
class AdminMeEvent with _$AdminMeEvent {
  const factory AdminMeEvent.started() = _Started;
const factory AdminMeEvent.getMe() = _GetMe;
}