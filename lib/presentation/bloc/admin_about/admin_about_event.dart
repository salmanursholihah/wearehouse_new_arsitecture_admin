part of 'admin_about_bloc.dart';

@freezed
class AdminAboutEvent with _$AdminAboutEvent {
  const factory AdminAboutEvent.started() = _Started;
const factory AdminAboutEvent.getList() = _GetList;
  const factory AdminAboutEvent.getDetail(int id) = _GetDetail;

  const factory AdminAboutEvent.create(AboutCreateRequestModel request) = _Create;

  const factory AdminAboutEvent.update({
    required int id,
    required AboutUpdateRequestModel request,
  }) = _Update;

  const factory AdminAboutEvent.delete(int id) = _Delete;
}