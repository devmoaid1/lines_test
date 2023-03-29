part of 'sizes_cubit.dart';

class SizesState extends Equatable {
  final List<SizeModel>? sizes;
  final int? selectedSizeIndex;
  const SizesState({this.sizes = const [], this.selectedSizeIndex = -1});

  SizesState copyWith({List<SizeModel>? sizes, int? selectedSizeIndex}) =>
      SizesState(
          selectedSizeIndex: selectedSizeIndex ?? this.selectedSizeIndex,
          sizes: sizes ?? this.sizes);

  @override
  List<Object> get props => [sizes!, selectedSizeIndex!];
}
