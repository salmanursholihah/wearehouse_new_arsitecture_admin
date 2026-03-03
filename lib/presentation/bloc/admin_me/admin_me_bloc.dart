import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_me_response_model.dart';

part 'admin_me_event.dart';
part 'admin_me_state.dart';
part 'admin_me_bloc.freezed.dart';

class AdminMeBloc extends Bloc<AdminMeEvent, AdminMeState> {
  final AdminAuthRemoteDatasource datasource;

  AdminMeBloc(this.datasource) : super(const _Initial()) {
    on<_GetMe>(_onGetMe);
  }

  Future<void> _onGetMe(_GetMe event, Emitter<AdminMeState> emit) async {
    emit(const AdminMeState.loading());

    final result = await datasource.me();

    // result.fold(
    //   (error) => emit(AdminMeState.error(error)),
    //   (data) => emit(AdminMeState.loaded(data)),
    // );
  }
}