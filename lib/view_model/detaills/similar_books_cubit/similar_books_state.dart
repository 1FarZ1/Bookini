part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;
  const SimilarBooksFailure({
    required this.errorMessage,
  });
}

class SimilarBooksSucess extends SimilarBooksState {
  final List<Book> books;
  const SimilarBooksSucess({
    required this.books,
  });
}
