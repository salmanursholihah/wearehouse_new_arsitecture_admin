import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_request_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_request_response_model.dart';

part 'admin_request_event.dart';
part 'admin_request_state.dart';
part 'admin_request_bloc.freezed.dart';

class AdminRequestBloc extends Bloc<AdminRequestEvent, AdminRequestState> {
  final AdminRequestRemoteDatasource datasource;

  AdminRequestBloc(this.datasource)
      : super(const AdminRequestState.initial()) {
    on<_GetRequests>(_getRequests);
    on<_GetDetail>(_getDetail);
    on<_Approve>(_approve);
    on<_Reject>(_reject);
    on<_Taken>(_taken);
  }

  Future<void> _getRequests(
      _GetRequests event, Emitter<AdminRequestState> emit) async {
    emit(const AdminRequestState.loading());

    final result = await datasource.getRequests();

    result.fold(
      (l) => emit(AdminRequestState.error(l)),
      (r) => emit(AdminRequestState.loaded(r.data?.data ?? [])),
    );
  }

  Future<void> _getDetail(
      _GetDetail event, Emitter<AdminRequestState> emit) async {
    emit(const AdminRequestState.loading());

    final result = await datasource.getRequestDetail(event.id);

    result.fold(
      (l) => emit(AdminRequestState.error(l)),
      (r) => emit(AdminRequestState.detailLoaded(r)),
    );
  }

  Future<void> _approve(_Approve event, Emitter<AdminRequestState> emit) async {
    final result = await datasource.approve(event.id);

    result.fold(
      (l) => emit(AdminRequestState.error(l)),
      (r) => emit(AdminRequestState.success(r)),
    );
  }

  Future<void> _reject(_Reject event, Emitter<AdminRequestState> emit) async {
    final result = await datasource.reject(event.id);

    result.fold(
      (l) => emit(AdminRequestState.error(l)),
      (r) => emit(AdminRequestState.success(r)),
    );
  }

  Future<void> _taken(_Taken event, Emitter<AdminRequestState> emit) async {
    final result = await datasource.markTaken(event.id);

    result.fold(
      (l) => emit(AdminRequestState.error(l)),
      (r) => emit(AdminRequestState.success(r)),
    );
  }
}
