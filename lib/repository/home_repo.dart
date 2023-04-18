import 'package:bookini/core/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../core/errors/failure.dart';
import '../models/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() async {
    ApiService apiService = ApiService(Dio());
    Map<String, dynamic> data = await apiService.get(endPoint: "");
    if (data['status code'] == 200) {
      return Right(data["books"]);
    }
    return Left(ServerFailure());
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
