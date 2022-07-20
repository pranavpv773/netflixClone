import 'package:dartz/dartz.dart';
import 'package:netflix_flutter/domain/hot_and_new/model/hot_and_new/hot_and_new.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNew>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNew>> getHotAndNewTVData();
}
