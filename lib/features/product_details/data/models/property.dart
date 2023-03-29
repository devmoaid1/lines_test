import 'package:equatable/equatable.dart';

class Property extends Equatable {
  final String? title;
  final String? type;
  final int? productId;

  const Property({
    this.title,
    this.type,
    this.productId,
  });
  @override
  List<Object?> get props => [title, type, productId];
}
