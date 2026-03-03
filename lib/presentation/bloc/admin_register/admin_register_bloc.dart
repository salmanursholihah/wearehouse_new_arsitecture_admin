import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_register_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_register_response_model.dart';

part 'admin_register_event.dart';
part 'admin_register_state.dart';
part 'admin_register_bloc.freezed.dart';

class AdminRegisterBloc extends Bloc<AdminRegisterEvent, AdminRegisterState> {
  final AdminAuthRemoteDatasource datasource;

  AdminRegisterBloc(this.datasource) : super(const _Initial()) {
    on<_Register>(_onRegister);
  }

  Future<void> _onRegister(
    _Register event,
    Emitter<AdminRegisterState> emit,
  ) async {
    emit(const AdminRegisterState.loading());

    // final result = await datasource.register(event.request);

    // result.fold(
    //   (error) => emit(AdminRegisterState.error(error)),
    //   (data) => emit(AdminRegisterState.loaded(data)),
    // );
  }
}
