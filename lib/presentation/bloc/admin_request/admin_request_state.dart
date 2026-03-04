part of 'admin_request_bloc.dart';

@freezed
class AdminRequestState with _$AdminRequestState {
  const factory AdminRequestState.initial() = _Initial;
  const factory AdminRequestState.loading() = _Loading;

  const factory AdminRequestState.loaded(List<RequestModel> requests) = _Loaded;

  const factory AdminRequestState.detailLoaded(RequestModel request) =
      _DetailLoaded;

  const factory AdminRequestState.success(String message) = _Success;

  const factory AdminRequestState.error(String message) = _Error;
}
