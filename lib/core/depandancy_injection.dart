import 'package:bookini/core/api_service.dart';
import 'package:bookini/repository/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void setupDi() {
  var _getIt = GetIt.instance;

  _getIt.registerSingleton<Dio>(Dio());
  _getIt.registerSingleton<ApiService>(ApiService(_getIt.get<Dio>()));
  _getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(_getIt.get<ApiService>()));
}
