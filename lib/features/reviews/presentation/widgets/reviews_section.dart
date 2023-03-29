import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/cubit/rating_cubit.dart';

import 'review_card.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<RatingCubit, RatingState>(
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, index) {
              final review = state.rating.reviews![index];
              return ReviewCard(
                review: review,
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: state.rating.reviews!.length);
      },
    ));
  }
}
