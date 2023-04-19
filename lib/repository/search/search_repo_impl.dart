// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookini/core/api_service.dart';
import 'package:bookini/core/errors/failure.dart';
import 'package:bookini/models/book/book.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/utils/list_create.dart';
import 'search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(
     this._apiService,
  );
  final ApiService _apiService;

  @override
  Future<Either<Failure, List<Book>>> fetchSearchBooks(String query) async {
    try {
      Map<String, dynamic> data = await _apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=$query');
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
