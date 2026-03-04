part of 'admin_product_bloc.dart';

@freezed
class AdminProductState with _$AdminProductState {
  const factory AdminProductState.initial() = _Initial;
 const factory AdminProductState.loading() = _Loading;

  const factory AdminProductState.listLoaded({
    required List<AdminProductModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? status,
    String? search,
  }) = _ListLoaded;

  const factory AdminProductState.loadingMore({
    required List<AdminProductModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? status,
    String? search,
  }) = _LoadingMore;

  const factory AdminProductState.detailLoading() = _DetailLoading;
  const factory AdminProductState.detailLoaded(AdminProductModel? product) = _DetailLoaded;

  const factory AdminProductState.imagesLoading() = _ImagesLoading;
  const factory AdminProductState.imagesLoaded(List<ProductImageModel> images) = _ImagesLoaded;

  const factory AdminProductState.actionLoading() = _ActionLoading;
  const factory AdminProductState.actionSuccess(String message) = _ActionSuccess;
  const factory AdminProductState.actionError(String message) = _ActionError;

  const factory AdminProductState.error(String message) = _Error;
}
