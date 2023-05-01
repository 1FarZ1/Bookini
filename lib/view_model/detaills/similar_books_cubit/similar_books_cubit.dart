import 'package:bookini/repository/home/home_repo.dart';
import 'package:bookini/repository/home/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../models/book/book.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());

  final HomeRepo _homeRepo;
  Future<void> fetchBooks(String categorie) async {
    emit(SimilarBooksLoading());

    await _homeRepo.fetchSimiliarBooks(categorie).then((eitherObject) {
      eitherObject.fold(
        (failure) =>
            emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SimilarBooksSucess(books: books)),
      );
    });
  }
}
