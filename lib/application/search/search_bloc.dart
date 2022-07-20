import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_flutter/domain/downloads/modals/i_downloads_repo.dart';
import 'package:netflix_flutter/domain/search/search_service.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

import '../../domain/downloads/modals/downloads.dart';
import '../../domain/search/modals/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
              searchResultList: [],
              idleList: state.idleList,
              isLoading: false,
              isError: false),
        );
        return;
      }

      emit(
        const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false),
      );
      // get trending
      final _result = await _downloadsService.getDownloadsImages();
      _result.fold(
        (MainFailure f) {
          emit(const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true));
        },
        (List<Downloads> list) {
          emit(SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false));
        },
      );
      // show to ui
    });

    on<SearchMovie>((event, emit) async {
      // call search api

      emit(
        const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: false),
      );
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold(
        (MainFailure f) {
          emit(const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true));
        },
        (SearchResp r) {
          emit(SearchState(
              searchResultList: r.results!,
              idleList: [],
              isLoading: false,
              isError: false));
        },
      );
      // show to ui
      emit(_state);
    });
  }
}
