import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_about_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/about_response_model.dart';

part 'admin_about_event.dart';
part 'admin_about_state.dart';
part 'admin_about_bloc.freezed.dart';

class AdminAboutBloc extends Bloc<AdminAboutEvent, AdminAboutState> {
final AdminAboutRemoteDatasource remote;

  AdminAboutBloc(this.remote) : super(const AdminAboutState.initial()) {
    on<_GetList>(_onGetList);
    on<_GetDetail>(_onGetDetail);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  Future<void> _onGetList(_GetList e, Emitter<AdminAboutState> emit) async {
    emit(const AdminAboutState.loading());
    final res = await remote.index();
    res.fold(
      (l) => emit(AdminAboutState.error(l)),
      (r) => emit(AdminAboutState.listLoaded(r.data)),
    );
  }

  Future<void> _onGetDetail(_GetDetail e, Emitter<AdminAboutState> emit) async {
    emit(const AdminAboutState.detailLoading());
    final res = await remote.show(e.id);
    res.fold(
      (l) => emit(AdminAboutState.error(l)),
      (r) => emit(AdminAboutState.detailLoaded(r.data)),
    );
  }

  Future<void> _onCreate(_Create e, Emitter<AdminAboutState> emit) async {
    emit(const AdminAboutState.actionLoading());
    final res = await remote.store(e.request);
    res.fold(
      (l) => emit(AdminAboutState.actionError(l)),
      (r) => emit(AdminAboutState.actionSuccess(r.message ?? 'Berhasil membuat About')),
    );
  }

  Future<void> _onUpdate(_Update e, Emitter<AdminAboutState> emit) async {
    emit(const AdminAboutState.actionLoading());
    final res = await remote.update(e.id, e.request);
    res.fold(
      (l) => emit(AdminAboutState.actionError(l)),
      (r) => emit(AdminAboutState.actionSuccess(r.message ?? 'Berhasil update About')),
    );
  }

  Future<void> _onDelete(_Delete e, Emitter<AdminAboutState> emit) async {
    emit(const AdminAboutState.actionLoading());
    final res = await remote.destroy(e.id);
    res.fold(
      (l) => emit(AdminAboutState.actionError(l)),
      (r) => emit(AdminAboutState.actionSuccess(r.message ?? 'Berhasil hapus About')),
    );
  }
}
