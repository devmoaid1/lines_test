import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_rating_state.dart';

class AddRatingCubit extends Cubit<AddRatingState> {
  AddRatingCubit() : super(const AddRatingState());

  void changeHideIdentityCheck(bool value) {
    emit(AddRatingState(hideIdentity: !value));
  }
}
