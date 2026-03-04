import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/stock_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_in_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_out_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/stock_log_response_model.dart';

part 'stock_event.dart';
part 'stock_state.dart';
part 'stock_bloc.freezed.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
   final StockRemoteDatasource remote;

  StockBloc(this.remote) : super(const StockState.initial()) {
    on<_GetLogs>(_onGetLogs);
    on<_LoadMore>(_onLoadMore);
    on<_ShowLog>(_onShowLog);
    on<_StockIn>(_onStockIn);
    on<_StockOut>(_onStockOut);
  }

  final List<StockLogModel> _items = [];
  int _page = 1;
  int _perPage = 10;
  bool _canLoadMore = false;

  String? _type;
  String? _search;
  int? _productId;

  Future<void> _onGetLogs(_GetLogs e, Emitter<StockState> emit) async {
    _items.clear();
    _page = 1;
    _perPage = e.perPage;
    _type = e.type;
    _search = e.search;
    _productId = e.productId;

    emit(const StockState.loading());

    final res = await remote.getLogs(
      type: _type,
      search: _search,
      productId: _productId,
      page: 1,
      perPage: _perPage,
    );

    res.fold(
      (l) => emit(StockState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? 1;
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(StockState.listLoaded(
          items: List.unmodifiable(_items),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
          type: _type,
          search: _search,
          productId: _productId,
        ));
      },
    );
  }

  Future<void> _onLoadMore(_LoadMore e, Emitter<StockState> emit) async {
    if (!_canLoadMore) return;

    emit(StockState.loadingMore(
      items: List.unmodifiable(_items),
      page: _page,
      perPage: _perPage,
      canLoadMore: _canLoadMore,
      type: _type,
      search: _search,
      productId: _productId,
    ));

    final res = await remote.getLogs(
      type: _type,
      search: _search,
      productId: _productId,
      page: _page + 1,
      perPage: _perPage,
    );

    res.fold(
      (l) => emit(StockState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? (_page + 1);
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(StockState.listLoaded(
          items: List.unmodifiable(_items),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
          type: _type,
          search: _search,
          productId: _productId,
        ));
      },
    );
  }

  Future<void> _onShowLog(_ShowLog e, Emitter<StockState> emit) async {
    emit(const StockState.detailLoading());
    final res = await remote.showLog(e.id);
    res.fold(
      (l) => emit(StockState.error(l)),
      (r) => emit(StockState.detailLoaded(r.data)),
    );
  }

  Future<void> _onStockIn(_StockIn e, Emitter<StockState> emit) async {
    emit(const StockState.actionLoading());
    final res = await remote.stockIn(e.request);
    res.fold(
      (l) => emit(StockState.actionError(l)),
      (r) => emit(StockState.actionSuccess(r.message ?? 'Stock in berhasil')),
    );
  }

  Future<void> _onStockOut(_StockOut e, Emitter<StockState> emit) async {
    emit(const StockState.actionLoading());
    final res = await remote.stockOut(e.request);
    res.fold(
      (l) => emit(StockState.actionError(l)),
      (r) => emit(StockState.actionSuccess(r.message ?? 'Stock out berhasil')),
    );
  }
}
