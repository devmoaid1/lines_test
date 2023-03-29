import 'package:lines_test/core/constants/mock/properties_mock.dart';
import 'package:lines_test/core/constants/mock/sizes_mock.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';
import 'package:lines_test/features/product_details/data/models/property.dart';
import 'package:lines_test/features/product_details/data/models/size_model.dart';

import '../../../../core/constants/mock/product_mock.dart';

abstract class ProductDetailsRepository {
  Product getProductDetails();
  List<Property> getProductProperties({required int productId});
  List<SizeModel> getProductSizes({required int productId});
}

class ProductDetailsRepositoryImpl implements ProductDetailsRepository {
  @override
  Product getProductDetails() {
    return mockProduct;
  }

  @override
  List<Property> getProductProperties({required int productId}) {
    return propertiesMock
        .where((property) => property.productId == productId)
        .toList();

    // return properties related to product via id
  }

  @override
  List<SizeModel> getProductSizes({required int productId}) {
    return sizesMock
        .where((size) => size.productId == productId)
        .toList(); // return sizes related to product via id
  }
}
