import 'package:equatable/equatable.dart';

class Property extends Equatable {
  final String? title;
  final String? type;

  const Property({this.title, this.type});
  @override
  List<Object?> get props => [title, type];
}
