import 'package:bookini/repository/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../models/book/book.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepoImpl) : super(SimilarBooksInitial());

  final HomeRepoImpl _homeRepoImpl;
  Future<void> fetchBooks(String categorie) async {
    emit(SimilarBooksLoading());

    await _homeRepoImpl.fetchSimiliarBooks(categorie).then((eitherObject) {
      eitherObject.fold(
        (failure) =>
            emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SimilarBooksSucess(books: books)),
      );
    });
  }
}
