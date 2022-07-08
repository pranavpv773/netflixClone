part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoadding,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccessOption,
    List<Downloads>? downloads,
  }) = _DownloadsState;

  factory DownloadsState.inital() {
    return const DownloadsState(
        isLoadding: false, downloadsFailureOrSuccessOption: None());
  }
}
