
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/book/book.dart';
import '../../../repository/home/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo _homeRepo;

  Future<void> fetchData() async {
    emit(FeaturedBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) =>
            emit(FeaturedBooksFailure(errorMessage: failure.errorMessage)),
        (books) => emit(FeaturedBooksSucess(books: books)));
  }
}
