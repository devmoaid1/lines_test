import 'package:lines_test/core/constants/mock/recommended_products_mock.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';

abstract class RecommendationRepository {
  List<RecommendedProduct> getRecommendedProducts({required int productId});
}

class RecommendationRepositoryImpl implements RecommendationRepository {
  @override
  List<RecommendedProduct> getRecommendedProducts({required int productId}) {
    return recommendedProducts
        .where((product) => product.relativeId == productId)
        .toList();
  }
}
