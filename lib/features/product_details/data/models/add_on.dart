import 'package:equatable/equatable.dart';

class AddOn extends Equatable {
  final int? productId;
  final String? name;
  final String? imageUrl;
  final String? price;

  const AddOn({this.productId, this.name, this.imageUrl, this.price});

  @override
  List<Object?> get props => [productId, name, imageUrl, price];
}
