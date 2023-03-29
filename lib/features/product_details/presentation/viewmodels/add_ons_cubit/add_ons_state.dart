part of 'add_ons_cubit.dart';

class AddOnsState extends Equatable {
  final List<AddOn>? addOns;
  final List<AddOn>? selectedAddOn;
  const AddOnsState({this.addOns = const [], this.selectedAddOn = const []});

  AddOnsState copyWith({List<AddOn>? addOns, List<AddOn>? selectedAddOn}) =>
      AddOnsState(
          addOns: addOns ?? this.addOns,
          selectedAddOn: selectedAddOn ?? this.selectedAddOn);

  @override
  List<Object> get props => [addOns!, selectedAddOn!];
}
