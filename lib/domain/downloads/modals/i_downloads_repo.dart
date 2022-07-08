import 'package:dartz/dartz.dart';
import 'package:netflix_flutter/domain/downloads/modals/downloads.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
