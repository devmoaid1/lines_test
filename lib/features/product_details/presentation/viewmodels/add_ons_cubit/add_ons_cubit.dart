// ignore_for_file: prefer_final_fields

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lines_test/features/product_details/data/models/add_on.dart';
import 'package:lines_test/features/product_details/data/repositories/add_ons_repository.dart';

part 'add_ons_state.dart';

class AddOnsCubit extends Cubit<AddOnsState> {
  final AddOnsRepository addOnsRepository;
  AddOnsCubit({required this.addOnsRepository}) : super(const AddOnsState());

  List<AddOn> _selectedAddOn = List<AddOn>.empty(growable: true);
  List<AddOn> _addOns = List<AddOn>.empty(growable: true);

  void getAddOns({required int productId}) {
    _addOns = addOnsRepository.getProductAddOns(productId: productId);
    emit(state.copyWith(addOns: _addOns));
  }

  void selectAddOn({required AddOn addOn}) {
    List<AddOn> selectedAddonsCopy = List.from(_selectedAddOn);
    bool isSelected = selectedAddonsCopy.contains(addOn);

    if (!isSelected) {
      // if not selected add to be selected

      selectedAddonsCopy.add(addOn);
    } else {
      // if selected remove to unselect
      selectedAddonsCopy.remove(addOn);
    }
    _selectedAddOn = List.from(selectedAddonsCopy);
    emit(state.copyWith(selectedAddOn: selectedAddonsCopy));
  }

  void selectAll() {
    _selectedAddOn = List.from(_addOns); // selected addons to be all addons
    emit(state.copyWith(selectedAddOn: _selectedAddOn));
  }
}
