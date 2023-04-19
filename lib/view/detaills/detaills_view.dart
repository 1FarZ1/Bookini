import 'package:bookini/view_model/detaills/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/book/book.dart';
import 'widgets/detaills_body.dart';

class DetaillsView extends StatefulWidget {
  const DetaillsView({super.key, required this.book});

  final Book book;

  @override
  State<DetaillsView> createState() => _DetaillsViewState();
}

class _DetaillsViewState extends State<DetaillsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchBooks(
      widget.book.volumeInfo.categories?.first ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DetaillsBody(book:widget.book),
    );
  }
}
