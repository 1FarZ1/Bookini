import 'package:bloc/bloc.dart';
import 'package:bookini/repository/search/search_repo_impl.dart';
import 'package:meta/meta.dart';

import '../../../models/book/book.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepoImpl) : super(SearchBooksInitial());

  final SearchRepoImpl searchRepoImpl;

  void searchBooks(String query) {
    emit(SearchBooksLoading());
    searchRepoImpl.fetchSearchBooks(query).then((eitherObject) {
      eitherObject.fold(
        (failure) =>
            emit(SearchBooksFailure(message: failure.errorMessage)),
        (books) => emit(SearchBooksSuccess(books: books)),
      );
    });
  }

}
