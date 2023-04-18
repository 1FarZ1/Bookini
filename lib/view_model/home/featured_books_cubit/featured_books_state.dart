part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFailure({
    required this.errorMessage,
  });
}
class FeaturedBooksSucess extends FeaturedBooksState {
  final List<Book> books;
  const FeaturedBooksSucess({
    required this.books,
  });
}
