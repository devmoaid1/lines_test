import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/features/reviews/data/models/rating_data.dart';
import 'package:lines_test/features/reviews/data/models/review.dart';
import 'package:lines_test/features/reviews/data/models/store_reply.dart';
import 'package:lines_test/features/reviews/data/models/user.dart';

const ratingMock =
    ReviewRating(productId: 1, rating: 4.0, ratingCount: 12, reviews: [
  Review(
      comment:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique..',
      date: '4, أبريل , 2022',
      images: [
        AppAssets.reviewImagePath,
        AppAssets.reviewImagePath,
        AppAssets.reviewImagePath
      ],
      user: User(imageUrl: AppAssets.userImagePath, name: 'احمد')),
  Review(
      comment:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique..',
      date: '4, أبريل , 2022',
      storeReply: StoreReply(
          reply:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu in at sit sed tristique..',
          storeId: 1,
          storeName: 'شانيل'),
      user: User(imageUrl: AppAssets.userImagePath, name: 'احمد'))
]);
