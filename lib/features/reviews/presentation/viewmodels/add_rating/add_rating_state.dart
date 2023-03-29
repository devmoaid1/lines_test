part of 'add_rating_cubit.dart';

class AddRatingState extends Equatable {
  final bool? hideIdentity;

  const AddRatingState({this.hideIdentity = true});

  @override
  List<Object> get props => [hideIdentity!];
}
