import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_flutter/domain/downloads/modals/i_downloads_repo.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

import '../../domain/downloads/modals/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {
    on<_getDownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoadding: true,
          downloadsFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoadding: false,
            downloadsFailureOrSuccessOption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoadding: false,
            downloads: success,
            downloadsFailureOrSuccessOption: some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}
