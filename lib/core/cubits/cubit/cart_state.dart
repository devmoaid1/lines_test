part of 'cart_cubit.dart';

class CartState extends Equatable {
  final List<CartItem>? cartItems;
  const CartState({this.cartItems = const []});

  @override
  List<Object> get props => [cartItems!];
}
