import 'dart:developer';

import 'package:bookini/core/errors/failure.dart';
import 'package:bookini/models/book/book.dart';
import 'package:bookini/repository/home/home_repo.dart';
import 'package:bookini/repository/home/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this._homeRepo) : super(NewestBookInitial());
  final HomeRepo _homeRepo;

  Future<void> fetchBooks() async {
    emit(NewestBookLoading());
    log("Loading 2");
    Either<Failure, List<Book>> result =
        await _homeRepo.fetchBestSellerBooks();

    result.fold(
      (failure) => emit(NewestBookFailure(errorMessage: failure.errorMessage)),
      (books) => emit(NewestBookSucess(books: books)),
    );
  }
}
