part of 'rating_cubit.dart';

class RatingState extends Equatable {
  final ReviewRating rating;
  const RatingState({this.rating = const ReviewRating()});

  @override
  List<Object> get props => [rating];
}
