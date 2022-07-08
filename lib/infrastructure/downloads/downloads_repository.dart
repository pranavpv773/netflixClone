import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_flutter/domain/downloads/modals/downloads.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_flutter/domain/downloads/modals/i_downloads_repo.dart';
import 'package:netflix_flutter/domain/utility/api_end_points.dart';
import 'package:netflix_flutter/domain/utility/failures/main_failures.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadsList = [];
        for (final raw in response.data) {
          downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
