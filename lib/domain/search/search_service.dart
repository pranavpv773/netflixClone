import 'package:dartz/dartz.dart';
import 'package:netflix_flutter/domain/search/modals/search_resp/search_resp.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
