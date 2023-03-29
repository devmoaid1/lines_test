import 'package:get_it/get_it.dart';
import 'package:lines_test/core/cubits/cubit/cart_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton(() => CartCubit());
}
