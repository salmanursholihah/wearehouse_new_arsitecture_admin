part of 'admin_me_bloc.dart';

@freezed
class AdminMeState with _$AdminMeState {
const factory AdminMeState.initial() = _Initial;
 const factory AdminMeState.loading() = _Loading;
  const factory AdminMeState.loaded(AdminMeResponseModel data) = _Loaded;
  const factory AdminMeState.error(String message) = _Error;
}