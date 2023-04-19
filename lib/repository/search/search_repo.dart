import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../models/book/book.dart';

abstract class SearchRepo{
  Future<Either<Failure, List<Book>>> fetchSearchBooks(String query);
}