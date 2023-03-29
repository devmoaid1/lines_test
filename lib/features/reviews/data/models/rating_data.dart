import 'package:equatable/equatable.dart';

import 'review.dart';

abstract class RatingModel extends Equatable {
  final double? rating;
  final int? ratingCount;

  const RatingModel({this.rating, this.ratingCount});
}

class ShortRating extends RatingModel {
  const ShortRating({double? rating, int? ratingCount})
      : super(rating: rating, ratingCount: ratingCount);
  @override
  List<Object?> get props => [rating, ratingCount];
}

class ReviewRating extends RatingModel {
  final List<Review>? reviews;
  final int? productId;
  const ReviewRating({
    double? rating,
    int? ratingCount,
    this.reviews,
    this.productId,
  }) : super(rating: rating, ratingCount: ratingCount);
  @override
  List<Object?> get props => [rating, ratingCount, reviews, productId];
}
