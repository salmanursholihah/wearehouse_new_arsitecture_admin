part of 'admin_product_request_bloc.dart';

@freezed
class AdminProductRequestEvent with _$AdminProductRequestEvent {
  const factory AdminProductRequestEvent.started() = _Started;
  const factory AdminProductRequestEvent.getList({
    String? status, // pending|approved|rejected
    String? search,
    @Default(10) int perPage,
  }) = _GetList;

  const factory AdminProductRequestEvent.loadMore() = _LoadMore;

  const factory AdminProductRequestEvent.getDetail(int id) = _GetDetail;

  const factory AdminProductRequestEvent.approve(int id) = _Approve;

  const factory AdminProductRequestEvent.reject({
    required int id,
    required ProductRequestRejectRequestModel request,
  }) = _Reject;
}