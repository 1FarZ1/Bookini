import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../core/api_service.dart';
import '../core/errors/failure.dart';
import '../core/utils/list_create.dart';
import '../models/book/book.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService = ApiService(Dio());

  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() async {
    try {
      Map<String, dynamic> data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<Book> books = creatingList(data['items']);
      return Right(books);
    }on Exception {
      return Left(ServerFailure());
    }
  }

 

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
