part of 'admin_about_bloc.dart';

@freezed
class AdminAboutState with _$AdminAboutState {
  const factory AdminAboutState.initial() = _Initial;
  const factory AdminAboutState.loading() = _Loading;

  const factory AdminAboutState.listLoaded(List<AboutModel> items) = _ListLoaded;

  const factory AdminAboutState.detailLoading() = _DetailLoading;
  const factory AdminAboutState.detailLoaded(AboutModel? item) = _DetailLoaded;

  const factory AdminAboutState.actionLoading() = _ActionLoading;
  const factory AdminAboutState.actionSuccess(String message) = _ActionSuccess;
  const factory AdminAboutState.actionError(String message) = _ActionError;

  const factory AdminAboutState.error(String message) = _Error;
}
