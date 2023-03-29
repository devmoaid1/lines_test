import 'package:get_it/get_it.dart';
import 'package:lines_test/core/cubits/cubit/cart_cubit.dart';
import 'package:lines_test/features/product_details/data/repositories/add_ons_repository.dart';
import 'package:lines_test/features/product_details/data/repositories/product_details_repository.dart';
import 'package:lines_test/features/product_details/data/repositories/recommendation_repository.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/add_ons_cubit/add_ons_cubit.dart';

import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/properties_cubit/properties_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/recommendation_cubit/recommendation_cubit.dart';
import 'package:lines_test/features/reviews/data/repositories/rating_repository.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/add_rating/add_rating_cubit.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/rating_cubit/rating_cubit.dart';

import '../features/product_details/presentation/viewmodels/sizes_cubit/sizes_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  // repositories (data)
  sl.registerLazySingleton<ProductDetailsRepository>(
      () => ProductDetailsRepositoryImpl());
  sl.registerLazySingleton<AddOnsRepository>(() => AddOnsRepositoryImpl());
  sl.registerLazySingleton<RecommendationRepository>(
      () => RecommendationRepositoryImpl());

  sl.registerLazySingleton<RatingRepository>(() => RatingRepositoryImpl());

  // cubits (business logic)
  sl.registerLazySingleton(() => CartCubit());
  sl.registerFactory(() => ProductDetailsCubit(productDetailsRepository: sl()));
  sl.registerFactory(() => SizesCubit(productDetailsRepository: sl()));
  sl.registerFactory(() => AddOnsCubit(addOnsRepository: sl()));
  sl.registerFactory(() => RecommendationCubit(recommendationRepository: sl()));
  sl.registerFactory(() => PropertiesCubit(productDetailsRepository: sl()));
  sl.registerFactory(() => RatingCubit(ratingRepository: sl()));
  sl.registerFactory(() => AddRatingCubit());
}
