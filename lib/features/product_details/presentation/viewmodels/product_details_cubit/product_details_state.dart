part of 'product_details_cubit.dart';

class ProductDetailsState extends Equatable {
  final NormalProduct? product;
  final int? dotIndex;
  const ProductDetailsState(
      {this.dotIndex = 0, this.product = const NormalProduct()});

  ProductDetailsState copyWith({NormalProduct? product, int? dotIndex}) =>
      ProductDetailsState(
          dotIndex: dotIndex ?? this.dotIndex,
          product: product ?? this.product);

  @override
  List<Object> get props => [product!, dotIndex!];
}
