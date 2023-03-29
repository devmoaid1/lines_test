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

    List<CartItem> itemsCopy = List.from(_items);

    emit(CartState(cartItems: itemsCopy));
  }

  void incrementQuantity(Product product) {
    var existingItem = _items.firstWhere(
        (item) => item.product!.id == product.id,
        orElse: () => const CartItem());
    if (existingItem.product?.id != null) {
      int index = _items.indexOf(existingItem);
      _items[index] =
          existingItem.copyWith(quantity: existingItem.quantity! + 1);
    }
    List<CartItem> itemsCopy = List.from(_items);
    emit(CartState(cartItems: itemsCopy));
  }

  void decrementQuantity(Product product) {
    var existingItem = _items.firstWhere(
        (item) => item.product!.id == product.id,
        orElse: () => const CartItem());
    if (existingItem.quantity! > 1) {
      int index = _items.indexOf(existingItem);

      _items[index] =
          existingItem.copyWith(quantity: existingItem.quantity! - 1);
    } else {
      _items.remove(existingItem);
    }
    List<CartItem> itemsCopy = List.from(_items);
    emit(CartState(cartItems: itemsCopy));
  }
}
