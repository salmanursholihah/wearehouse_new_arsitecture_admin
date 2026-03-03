import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_login_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_auth_data.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_auth_response_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_login_response_model.dart';

part 'admin_login_event.dart';
part 'admin_login_state.dart';
part 'admin_login_bloc.freezed.dart';

class AdminLoginBloc extends Bloc<AdminLoginEvent, AdminLoginState> {
 final AdminAuthRemoteDatasource datasource;
  final AdminAuthLocalDatasource local;

  AdminLoginBloc(this.datasource, this.local) : super(const _Initial()) {
     on<_Login>(_onLogin);
    on<_Reset>((_, emit) => emit(const AdminLoginState.initial()));
  }


  Future<void> _onLogin(_Login event, Emitter<AdminLoginState> emit) async {
    emit(const AdminLoginState.loading());

    final result = await datasource.login(event.request);

    await result.fold(
      (error) async => emit(AdminLoginState.error(error)),
      (data) async {
        // ✅ simpan token + admin
        await local.saveAuthData(data);
        emit(AdminLoginState.loaded(data));
      },
    );
  }
}