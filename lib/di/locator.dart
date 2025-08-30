import '../../../../core/network/network.dart';
import '../../../../core/services/services.dart';
import 'package:get_it/get_it.dart';

import '../features/home/application/home_bloc.dart';
import '../features/home/data/repository/home_api.dart';
import '../features/home/data/repo_implementation/home_repo_impl.dart';
import '../features/home/domain/repositories/home_repo.dart';
import '../features/home/application/usecase/home_usecases.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator
    ..registerSingleton<ApiManager>(DioProviderImpl())
    ..registerSingleton<NavigationService>(NavigationService());

  // Home
  serviceLocator.registerFactory<HomeBloc>(() => HomeBloc());
  serviceLocator.registerLazySingleton<HomeApi>(() => HomeApi());
  serviceLocator.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(serviceLocator()));
  serviceLocator
      .registerLazySingleton<HomeUsecase>(() => HomeUsecase(serviceLocator()));
}
