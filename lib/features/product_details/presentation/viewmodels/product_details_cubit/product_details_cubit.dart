import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';
import 'package:lines_test/features/product_details/data/repositories/product_details_repository.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepository productDetailsRepository;
  ProductDetailsCubit({required this.productDetailsRepository})
      : super(const ProductDetailsState());

  void changeDotIndex(int value) => emit(state.copyWith(dotIndex: value));

  void getProduct({required int productId}) {
    final product = productDetailsRepository.getProductDetails();
    emit(state.copyWith(product: product));
  }
}
