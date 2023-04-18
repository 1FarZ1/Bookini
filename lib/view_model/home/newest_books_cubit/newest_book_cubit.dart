import 'package:bookini/models/book/book.dart';
import 'package:bookini/repository/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this._homeRepoImpl) : super(NewestBookInitial());
  final HomeRepoImpl _homeRepoImpl;

  Future<void> fetchBooks() async {
    emit(NewestBookLoading());
    await _homeRepoImpl.fetchBestSellerBooks().then((eitherObject) {
      eitherObject.fold(
        (failure) =>
            emit(NewestBookFailure(errorMessage: failure.errorMessage)),
        (books) => NewestBookSucess(books: books),
      );
    });
  }
}
