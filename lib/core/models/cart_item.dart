import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';

class CartItem extends Equatable {
  final int? quantity;
  final Product? product;

  const CartItem({this.quantity, this.product});

  CartItem copyWith({int? quantity, Product? product}) => CartItem(
      product: product ?? this.product, quantity: quantity ?? this.quantity);
  @override
  List<Object?> get props => [quantity, product];
}
