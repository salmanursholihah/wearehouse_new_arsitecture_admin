part of 'stock_bloc.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.started() = _Started;
  const factory StockEvent.getLogs({
    String? type, // in|out|null
    String? search,
    int? productId,
    @Default(10) int perPage,
  }) = _GetLogs;

  const factory StockEvent.loadMore() = _LoadMore;

  const factory StockEvent.showLog(int id) = _ShowLog;

  const factory StockEvent.stockIn(StockInRequestModel request) = _StockIn;

  const factory StockEvent.stockOut(StockOutRequestModel request) = _StockOut;
}