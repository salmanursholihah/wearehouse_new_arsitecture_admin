import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_product_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_product_response_model.dart';

part 'admin_product_event.dart';
part 'admin_product_state.dart';
part 'admin_product_bloc.freezed.dart';

class AdminProductBloc extends Bloc<AdminProductEvent, AdminProductState> {
  final AdminProductRemoteDatasource remote;
  
  AdminProductBloc(this.remote) : super(const AdminProductState.initial()) {
    on<_GetList>(_onGetList);
    on<_LoadMore>(_onLoadMore);
    on<_GetDetail>(_onGetDetail);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_Approve>(_onApprove);
    on<_Reject>(_onReject);
    on<_GetImages>(_onGetImages);
    on<_AddImage>(_onAddImage);
    on<_DeleteImage>(_onDeleteImage);
  }

  final List<AdminProductModel> _items = [];
  int _page = 1;
  int _perPage = 10;
  bool _canLoadMore = false;
  String? _status;
  String? _search;

  Future<void> _onGetList(_GetList e, Emitter<AdminProductState> emit) async {
    _items.clear();
    _page = 1;
    _perPage = e.perPage;
    _status = e.status;
    _search = e.search;

    emit(const AdminProductState.loading());

    final res = await remote.index(
      status: _status,
      search: _search,
      page: 1,
      perPage: _perPage,
    );

    res.fold(
      (l) => emit(AdminProductState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? 1;
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminProductState.listLoaded(
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

  Future<void> _onLoadMore(_LoadMore e, Emitter<AdminProductState> emit) async {
    if (!_canLoadMore) return;

    emit(AdminProductState.loadingMore(
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
      (l) => emit(AdminProductState.error(l)),
      (r) {
        final pag = r.data;
        _items.addAll(pag?.data ?? []);
        _page = pag?.currentPage ?? (_page + 1);
        _canLoadMore = pag?.canLoadMore ?? false;

        emit(AdminProductState.listLoaded(
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

  Future<void> _onGetDetail(_GetDetail e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.detailLoading());
    final res = await remote.show(e.id);
    res.fold(
      (l) => emit(AdminProductState.error(l)),
      (r) => emit(AdminProductState.detailLoaded(r.data)),
    );
  }

  Future<void> _onCreate(_Create e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.store(e.request);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Berhasil')),
    );
  }

  Future<void> _onUpdate(_Update e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.update(e.id, e.request);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Berhasil')),
    );
  }

  Future<void> _onDelete(_Delete e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.destroy(e.id);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Berhasil')),
    );
  }

  Future<void> _onApprove(_Approve e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.approve(e.id);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Approved')),
    );
  }

  Future<void> _onReject(_Reject e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.reject(e.id);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Rejected')),
    );
  }

  Future<void> _onGetImages(_GetImages e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.imagesLoading());
    final res = await remote.images(e.productId);
    res.fold(
      (l) => emit(AdminProductState.error(l)),
      (r) => emit(AdminProductState.imagesLoaded(r)),
    );
  }

  Future<void> _onAddImage(_AddImage e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.addImage(productId: e.productId, image: e.image);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Gambar ditambahkan')),
    );
  }

  Future<void> _onDeleteImage(_DeleteImage e, Emitter<AdminProductState> emit) async {
    emit(const AdminProductState.actionLoading());
    final res = await remote.deleteImage(e.imageId);
    res.fold(
      (l) => emit(AdminProductState.actionError(l)),
      (r) => emit(AdminProductState.actionSuccess(r.message ?? 'Gambar dihapus')),
    );
  }
}