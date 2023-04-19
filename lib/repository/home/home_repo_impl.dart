
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/api_service.dart';
import '../../core/errors/failure.dart';
import '../../core/utils/list_create.dart';
import '../../models/book/book.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(this._apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() async {
    try {
      Map<String, dynamic> data = await _apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');
      List<Book> books = creatingList(data['items']);
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<Book> books = creatingList(data['items']);
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchSimiliarBooks(String categorie) async {
    try {
      Map<String, dynamic> data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&sorting=relevance&q=programming');
      List<Book> books = creatingList(data['items']);
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
