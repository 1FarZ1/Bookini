import 'package:dartz/dartz.dart';

import '../core/errors/failure.dart';
import '../models/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure,List<Book>>>fetchFeaturedBooks();

}

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
  

}


