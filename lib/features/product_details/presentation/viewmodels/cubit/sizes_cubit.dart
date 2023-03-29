import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/size_model.dart';
import 'package:lines_test/features/product_details/data/repositories/product_details_repository.dart';

part 'sizes_state.dart';

class SizesCubit extends Cubit<SizesState> {
  final ProductDetailsRepository productDetailsRepository;
  SizesCubit({required this.productDetailsRepository})
      : super(const SizesState());

  void selectSize(int index) => emit(state.copyWith(selectedSizeIndex: index));

  void getSizes({required int productId}) {
    final sizes =
        productDetailsRepository.getProductSizes(productId: productId);
    emit(state.copyWith(sizes: sizes));
  }
}
