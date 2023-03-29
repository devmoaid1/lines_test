part of 'recommendation_cubit.dart';

class RecommendationState extends Equatable {
  final List<RecommendedProduct>? recommendations;
  const RecommendationState({this.recommendations = const []});

  @override
  List<Object> get props => [recommendations!];
}
