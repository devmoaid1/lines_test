import 'package:get_it/get_it.dart';
import 'package:lines_test/core/cubits/cubit/cart_cubit.dart';
import 'package:lines_test/features/product_details/data/repositories/add_ons_repository.dart';
import 'package:lines_test/features/product_details/data/repositories/product_details_repository.dart';
import 'package:lines_test/features/product_details/data/repositories/recommendation_repository.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/add_ons_cubit/add_ons_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/cubit/sizes_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/recommendation_cubit/recommendation_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton(() => CartCubit());
  sl.registerLazySingleton<ProductDetailsRepository>(
      () => ProductDetailsRepositoryImpl());
  sl.registerLazySingleton<AddOnsRepository>(() => AddOnsRepositoryImpl());
  sl.registerLazySingleton<RecommendationRepository>(
      () => RecommendationRepositoryImpl());

  sl.registerFactory(() => ProductDetailsCubit(productDetailsRepository: sl()));
  sl.registerFactory(() => SizesCubit(productDetailsRepository: sl()));
  sl.registerFactory(() => AddOnsCubit(addOnsRepository: sl()));
  sl.registerFactory(() => RecommendationCubit(recommendationRepository: sl()));
}
