import 'package:dartz/dartz.dart';
import '../../core/errors/failure.dart';
import '../../models/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchSimiliarBooks(String categorie);
}

