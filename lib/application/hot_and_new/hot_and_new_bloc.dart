import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_flutter/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

import '../../domain/hot_and_new/model/hot_and_new/hot_and_new.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    //
    on<LoadDataInComingSoon>((event, emit) async {
      //send Loading TO UI

      emit(
        const HotAndNewState(
            comingSoonList: [],
            everyOneWatchingList: [],
            isLoading: true,
            hasError: false),
      );
      // get data from remote
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      //data to state
      final newState = _result.fold(
        (MainFailure failure) {
          return const HotAndNewState(
            comingSoonList: [],
            everyOneWatchingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNew resp) {
          return HotAndNewState(
            comingSoonList: resp.results,
            everyOneWatchingList: state.everyOneWatchingList,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(newState);
    });
    on<LoadDataInEveryoneIsWatching>((event, emit) async {
      //send Loading TO UI

      emit(
        const HotAndNewState(
            comingSoonList: [],
            everyOneWatchingList: [],
            isLoading: true,
            hasError: false),
      );
      // get data from remote
      final _result = await _hotAndNewService.getHotAndNewTVData();

      //data to state
      final newState = _result.fold(
        (MainFailure failure) {
          return const HotAndNewState(
            comingSoonList: [],
            everyOneWatchingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNew resp) {
          return HotAndNewState(
            comingSoonList: state.comingSoonList,
            everyOneWatchingList: resp.results,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(newState);
    });
  }
}
