part of 'admin_request_bloc.dart';

@freezed
class AdminRequestEvent with _$AdminRequestEvent {
  const factory AdminRequestEvent.started() = _Started;
  const factory AdminRequestEvent.getRequests() = _GetRequests;

  const factory AdminRequestEvent.getDetail(int id) = _GetDetail;

  const factory AdminRequestEvent.approve(int id) = _Approve;

  const factory AdminRequestEvent.reject(int id) = _Reject;

  const factory AdminRequestEvent.taken(int id) = _Taken;
}