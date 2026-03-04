part of 'stock_bloc.dart';

@freezed
class StockState with _$StockState {
  const factory StockState.initial() = _Initial;

  const factory StockState.loading() = _Loading;

  const factory StockState.listLoaded({
    required List<StockLogModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? type,
    String? search,
    int? productId,
  }) = _ListLoaded;

  const factory StockState.loadingMore({
    required List<StockLogModel> items,
    required int page,
    required int perPage,
    required bool canLoadMore,
    String? type,
    String? search,
    int? productId,
  }) = _LoadingMore;

  const factory StockState.detailLoading() = _DetailLoading;
  const factory StockState.detailLoaded(StockLogModel? log) = _DetailLoaded;

  const factory StockState.actionLoading() = _ActionLoading;
  const factory StockState.actionSuccess(String message) = _ActionSuccess;
  const factory StockState.actionError(String message) = _ActionError;

  const factory StockState.error(String message) = _Error;
}
