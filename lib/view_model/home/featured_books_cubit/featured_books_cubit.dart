import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/book/book.dart';
import '../../../repository/home_repo_impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
  final HomeRepoImpl _homeRepoImpl = HomeRepoImpl();

  Future<void> fetchData() async {
    emit(FeaturedBooksLoading());
    _homeRepoImpl.fetchFeaturedBooks().then((eitherObject) {
      eitherObject.fold(
          (failure) =>
              emit(FeaturedBooksFailure(errorMessage: failure.errorMessage)),
          (books) => emit(FeaturedBooksSucess(books: books)));
    });
  }
}
