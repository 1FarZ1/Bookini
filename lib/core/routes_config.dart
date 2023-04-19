import 'package:bookini/view_model/search/search_books/search_books_cubit.dart';

import '../repository/home/home_repo_impl.dart';
import '../repository/search/search_repo_impl.dart';
import '../view/detaills/detaills_view.dart';
import '../view/search/search_view.dart';
import '../view_model/detaills/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../models/book/book.dart';
import '../view/home/home.dart';
import '../view/splash/splash.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/detaills',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider<SimilarBooksCubit>(
            create: (context) => SimilarBooksCubit(GetIt.I.get<HomeRepoImpl>()),
            child: DetaillsView(book: state.extra as Book),
          );
        },
      ),
      GoRoute(
        path: '/search',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider<SearchBooksCubit>(
            create: (context) => SearchBooksCubit(GetIt.I.get<SearchRepoImpl>()),
            child: const SearchView(),
          );
        },
      ),
    ],
  );
}
