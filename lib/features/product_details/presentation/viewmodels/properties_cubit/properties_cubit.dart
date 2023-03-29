import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/property.dart';
import 'package:lines_test/features/product_details/data/repositories/product_details_repository.dart';

part 'properties_state.dart';

class PropertiesCubit extends Cubit<PropertiesState> {
  final ProductDetailsRepository productDetailsRepository;
  PropertiesCubit({required this.productDetailsRepository})
      : super(const PropertiesState());

  void getProperties({required int productId}) {
    final properties =
        productDetailsRepository.getProductProperties(productId: productId);
    emit(PropertiesState(properties: properties));
  }
}
