part of 'admin_product_request_bloc.dart';

@freezed
class AdminProductRequestState with _$AdminProductRequestState {
  const factory AdminProductRequestState.initial() = _Initial;
 const factory AdminProductRequestState.loading() = _Loading;

  const factory AdminProductRequestState.listLoaded({
    required List<ProductRequestModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? status,
    String? search,
  }) = _ListLoaded;

  const factory AdminProductRequestState.loadingMore({
    required List<ProductRequestModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? status,
    String? search,
  }) = _LoadingMore;

  const factory AdminProductRequestState.detailLoading() = _DetailLoading;
  const factory AdminProductRequestState.detailLoaded(ProductRequestModel? item) = _DetailLoaded;

  const factory AdminProductRequestState.actionLoading() = _ActionLoading;
  const factory AdminProductRequestState.actionSuccess(String message) = _ActionSuccess;
  const factory AdminProductRequestState.actionError(String message) = _ActionError;

  const factory AdminProductRequestState.error(String message) = _Error;
}
