import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_remote_datasource.dart';

part 'admin_logout_event.dart';
part 'admin_logout_state.dart';
part 'admin_logout_bloc.freezed.dart';

class AdminLogoutBloc extends Bloc<AdminLogoutEvent, AdminLogoutState> {
  final AdminAuthRemoteDatasource remote;
  final AdminAuthLocalDatasource local;

  AdminLogoutBloc(this.remote, this.local) : super(const _Initial()) {
    on<_Logout>(_onLogout);
  }


  Future<void> _onLogout(_Logout event, Emitter<AdminLogoutState> emit) async {
    emit(const AdminLogoutState.loading());

    final res = await remote.logout();

    await res.fold(
      (l) async => emit(AdminLogoutState.error(l)),
      (r) async {
        await local.removeAuthData();
        emit(AdminLogoutState.success(r));
      },
    );
  }
}