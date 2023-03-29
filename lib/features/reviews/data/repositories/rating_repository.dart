import 'package:lines_test/core/constants/mock/rating_mock.dart';
import 'package:lines_test/features/reviews/data/models/rating_data.dart';

abstract class RatingRepository {
  ReviewRating getProductRating({required int productId});
}

class RatingRepositoryImpl implements RatingRepository {
  @override
  ReviewRating getProductRating({required int productId}) {
    return ratingMock;
  }
}
