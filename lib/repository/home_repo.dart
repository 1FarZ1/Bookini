import 'package:bookini/core/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../core/errors/failure.dart';
import '../models/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}

