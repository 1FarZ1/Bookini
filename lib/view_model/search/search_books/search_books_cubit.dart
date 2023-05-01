import 'package:bookini/repository/search/search_repo.dart';
import 'package:bookini/repository/search/search_repo_impl.dart';
import '../../../models/book/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  void searchBooks(String query) {
    emit(SearchBooksLoading());
    searchRepo.fetchSearchBooks(query).then((eitherObject) {
      eitherObject.fold(
        (failure) => emit(SearchBooksFailure(message: failure.errorMessage)),
        (books) => emit(SearchBooksSuccess(books: books)),
      );
    });
  }
}
