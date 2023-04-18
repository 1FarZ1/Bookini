import 'package:bookini/view/detaills/detaills_view.dart';
import 'package:bookini/view/search/search_view.dart';
import 'package:bookini/view/search/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/home/home.dart';
import '../view/splash/splash.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const DetaillsView();
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
          return const DetaillsView();
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
