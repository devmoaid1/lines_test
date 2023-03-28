import 'package:flutter/material.dart';

import 'review_card.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return const ReviewCard();
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 2));
  }
}
