part of 'properties_cubit.dart';

class PropertiesState extends Equatable {
  final List<Property>? properties;
  const PropertiesState({this.properties = const []});

  @override
  List<Object> get props => [properties!];
}
