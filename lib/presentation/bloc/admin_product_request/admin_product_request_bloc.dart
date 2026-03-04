import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/dmin_product_request_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_request_reject_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_product_request_response_model.dart';

part 'admin_product_request_event.dart';
part 'admin_product_request_state.dart';
part 'admin_product_request_bloc.freezed.dart';

class AdminProductRequestBloc extends Bloc<AdminProductRequestEvent, AdminProductRequestState> {
  final AdminProductRequestRemoteDatasource remote;

  AdminProductRequestBloc(this.remote) : super(const AdminProductRequestState.initial()) {
    on<_GetList>(_onGetList);
    on<_LoadMore>(_onLoadMore);
    on<_GetDetail>(_onGetDetail);
    on<_Approve>(_onApprove);
    on<_Reject>(_onReject);
  }

  final List<ProductRequestModel> _items = [];
  int _page = 1;
  int _perPage = 10;
  bool _canLoadMore = false;
  String? _status;
  String? _search;

  Future<void> _onGetList(_GetList e, Emitter<AdminProductRequestState> emit) async {
    _items.clear();
    _page = 1;
    _perPage = e.perPage;
    _status = e.status;
    _search = e.search;

    emit(const AdminProductRequestState.loading());

    final res = await remote.index(
      status: _status,
      search: _search,
      page: 1,
      perPage: _perPage,
    );

    res.fold(
      (l) => emit(AdminProductRequestState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? 1;
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminProductRequestState.listLoaded(
          items: List.unmodifiable(_items),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
          status: _status,
          search: _search,
        ));
      },
    );
  }

  Future<void> _onLoadMore(_LoadMore e, Emitter<AdminProductRequestState> emit) async {
    if (!_canLoadMore) return;

    emit(AdminProductRequestState.loadingMore(
      items: List.unmodifiable(_items),
      page: _page,
      perPage: _perPage,
      canLoadMore: _canLoadMore,
      status: _status,
      search: _search,
    ));

    final res = await remote.index(
      status: _status,
      search: _search,
      page: _page + 1,
      perPage: _perPage,
    );

    res.fold(
      (l) => emit(AdminProductRequestState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? (_page + 1);
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminProductRequestState.listLoaded(
          items: List.unmodifiable(_items),
          page: _page,
          perPage: _perPage,
          canLoadMore: _canLoadMore,
          status: _status,
          search: _search,
        ));
      },
    );
  }

  Future<void> _onGetDetail(_GetDetail e, Emitter<AdminProductRequestState> emit) async {
    emit(const AdminProductRequestState.detailLoading());
    final res = await remote.show(e.id);
    res.fold(
      (l) => emit(AdminProductRequestState.error(l)),
      (r) => emit(AdminProductRequestState.detailLoaded(r.data)),
    );
  }

  Future<void> _onApprove(_Approve e, Emitter<AdminProductRequestState> emit) async {
    emit(const AdminProductRequestState.actionLoading());
    final res = await remote.approve(e.id);
    res.fold(
      (l) => emit(AdminProductRequestState.actionError(l)),
      (r) => emit(AdminProductRequestState.actionSuccess(r.message ?? 'Approved')),
    );
  }

  Future<void> _onReject(_Reject e, Emitter<AdminProductRequestState> emit) async {
    emit(const AdminProductRequestState.actionLoading());
    final res = await remote.reject(e.id, e.request);
    res.fold(
      (l) => emit(AdminProductRequestState.actionError(l)),
      (r) => emit(AdminProductRequestState.actionSuccess(r.message ?? 'Rejected')),
    );
  }
}