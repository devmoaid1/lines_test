import 'package:equatable/equatable.dart';

abstract class Product extends Equatable {
  final int? id;
  final String? name;
  final List<String>? imagePaths;
  final double? originalPrice;
  final double? currentPrice;
  final int? stockQuantity;
  final String? description;

  const Product({
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
      int? id})
      : super(
          name: name,
          id: id,
          imagePaths: imagePaths,
          originalPrice: originalPrice,
          currentPrice: currentPrice,
          stockQuantity: stockQuantity,
          description: description,
        );

  @override
  List<Object?> get props => [
        name,
        imagePaths,
        originalPrice,
        currentPrice,
        stockQuantity,
        description,
        id
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
    this.relativeId,
  }) : super(
            name: name,
            imagePaths: imagePaths,
            originalPrice: originalPrice,
            currentPrice: currentPrice,
            stockQuantity: stockQuantity,
            description: description,
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
        id
      ];
}
