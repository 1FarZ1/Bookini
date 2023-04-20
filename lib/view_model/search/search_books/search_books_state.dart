part of 'search_books_cubit.dart';

abstract class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}
class SearchBooksLoading extends SearchBooksState {}
class SearchBooksSuccess extends SearchBooksState 
{
  final List<Book> books;
  SearchBooksSuccess({required this.books});
}
class SearchBooksFailure extends SearchBooksState {
  final String message;
  SearchBooksFailure({required this.message});
}
