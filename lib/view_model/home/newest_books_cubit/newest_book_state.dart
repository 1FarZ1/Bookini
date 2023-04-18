// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookSucess extends NewestBookState {
  final List<Book> books;
  const NewestBookSucess({
    required this.books,
  });
}

class NewestBookFailure extends NewestBookState {
  final String errorMessage;
  const NewestBookFailure({
    required this.errorMessage,
  });
}
