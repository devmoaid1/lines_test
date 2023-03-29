import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/core/models/cart_item.dart';

import '../../../features/product_details/data/models/product.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  final List<CartItem> _items = List<CartItem>.empty(growable: true);

  bool checkIfItemInCart({required Product product}) {
    final existingItem = _items.firstWhere(
        (item) => item.product!.id == product.id,
        orElse: () => const CartItem()); // check if exist in cart

    return existingItem.product?.id != null;
  }

  void addToCart({required Product product}) {
    final isProductExist = checkIfItemInCart(product: product);

    if (!isProductExist) {
      // add if product not in the cart
      _items.add(CartItem(quantity: 1, product: product));
    }

    emit(CartState(cartItems: _items));
  }

  void incrementQuantity(Product product) {
    var existingItem = _items.firstWhere(
        (item) => item.product!.id == product.id,
        orElse: () => const CartItem());
    if (existingItem.product?.id != null) {
      existingItem = CartItem(
          quantity: existingItem.quantity! + 1, product: existingItem.product);
    }
    emit(CartState(cartItems: _items));
  }

  void decrementQuantity(Product product) {
    var existingItem = _items.firstWhere(
        (item) => item.product!.id == product.id,
        orElse: () => const CartItem());
    if (existingItem.quantity! > 1) {
      existingItem = CartItem(
          quantity: existingItem.quantity! - 1, product: existingItem.product);
    } else {
      _items.remove(existingItem);
    }
    emit(CartState(cartItems: _items));
  }
}
