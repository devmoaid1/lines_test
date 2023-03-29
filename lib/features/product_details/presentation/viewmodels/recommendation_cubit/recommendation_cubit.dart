import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';
import 'package:lines_test/features/product_details/data/repositories/recommendation_repository.dart';

part 'recommendation_state.dart';

class RecommendationCubit extends Cubit<RecommendationState> {
  final RecommendationRepository recommendationRepository;
  RecommendationCubit({required this.recommendationRepository})
      : super(const RecommendationState());

  void getRecommendedProducts({required int relativeId}) {
    final recommendedProducts =
        recommendationRepository.getRecommendedProducts(productId: relativeId);
    emit(RecommendationState(recommendations: recommendedProducts));
  }
}
