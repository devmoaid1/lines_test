import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/reviews/data/models/rating_data.dart';
import 'package:lines_test/features/reviews/data/repositories/rating_repository.dart';

part 'rating_state.dart';

class RatingCubit extends Cubit<RatingState> {
  final RatingRepository ratingRepository;
  RatingCubit({required this.ratingRepository}) : super(const RatingState());

  void getProductRating({required int productId}) {
    final rating = ratingRepository.getProductRating(productId: productId);
    emit(RatingState(rating: rating));
  }
}
