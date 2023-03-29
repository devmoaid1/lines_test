import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';

class CartItem extends Equatable {
  final int? id;
  final int? quantity;
  final Product? product;

  const CartItem({this.id, this.quantity, this.product});
  @override
  List<Object?> get props => [id, quantity, product];
}
