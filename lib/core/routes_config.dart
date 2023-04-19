import 'package:bookini/repository/home_repo_impl.dart';
import 'package:bookini/view/detaills/detaills_view.dart';
import 'package:bookini/view/search/search_view.dart';
import 'package:bookini/view_model/detaills/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

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
            child: const DetaillsView(),
          );
        },
      ),
      GoRoute(
        path: '/search',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
