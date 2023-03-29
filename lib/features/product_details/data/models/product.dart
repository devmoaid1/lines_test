import 'package:equatable/equatable.dart';
import 'package:lines_test/features/reviews/data/models/rating_data.dart';

abstract class Product extends Equatable {
  final int? id;
  final String? name;
  final List<String>? imagePaths;
  final double? originalPrice;
  final double? currentPrice;
  final int? stockQuantity;
  final String? description;
  final String? fullDescription;
  final ShortRating? shortRating;

  const Product({
    this.shortRating,
    this.fullDescription,
    this.id,
    this.name,
    this.imagePaths = const [],
    this.originalPrice,
    this.currentPrice,
    this.stockQuantity,
    this.description = '',
  });
}

class NormalProduct extends Product {
  const NormalProduct(
      {String? name,
      List<String>? imagePaths,
      double? originalPrice,
      double? currentPrice,
      int? stockQuantity,
      String? description,
      ShortRating? shortRating,
      String? fullDescription,
      int? id})
      : super(
            name: name,
            shortRating: shortRating,
            id: id,
            imagePaths: imagePaths,
            originalPrice: originalPrice,
            currentPrice: currentPrice,
            stockQuantity: stockQuantity,
            description: description,
            fullDescription: fullDescription);

  @override
  List<Object?> get props => [
        name,
        imagePaths,
        originalPrice,
        currentPrice,
        stockQuantity,
        description,
        id,
        shortRating
      ];
}

class RecommendedProduct extends Product {
  final int? relativeId;

  const RecommendedProduct({
    String? name,
    int? id,
    List<String>? imagePaths,
    double? originalPrice,
    double? currentPrice,
    int? stockQuantity,
    String? description,
    String? fullDescription,
    ShortRating? shortRating,
    this.relativeId,
  }) : super(
            name: name,
            imagePaths: imagePaths,
            originalPrice: originalPrice,
            currentPrice: currentPrice,
            stockQuantity: stockQuantity,
            description: description,
            shortRating: shortRating,
            fullDescription: fullDescription,
            id: id);

  @override
  List<Object?> get props => [
        name,
        imagePaths,
        originalPrice,
        currentPrice,
        stockQuantity,
        description,
        relativeId,
        id,
        fullDescription,
        shortRating
      ];
}
