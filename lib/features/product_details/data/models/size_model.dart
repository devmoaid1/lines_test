import 'package:equatable/equatable.dart';

class SizeModel extends Equatable {
  final int? productId;
  final String? type;
  final String? price;

  const SizeModel({this.productId, this.type, this.price});

  @override
  List<Object?> get props => [productId, type, price];
}
