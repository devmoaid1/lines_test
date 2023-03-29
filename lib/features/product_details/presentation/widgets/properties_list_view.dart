import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodels/properties_cubit/properties_cubit.dart';
import 'property_card.dart';

class PropertiesListView extends StatelessWidget {
  const PropertiesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertiesCubit, PropertiesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.properties!.length,
          itemBuilder: (context, index) {
            return PropertyCard(
              property: state.properties![index],
              isColored: index % 2 == 0, // if even index  color the row
            );
          },
        );
      },
    );
  }
}
