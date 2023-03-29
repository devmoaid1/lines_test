import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/features/product_details/data/models/product.dart';
import 'package:lines_test/features/reviews/data/models/rating_data.dart';

const mockProduct = NormalProduct(
    id: 1,
    currentPrice: 20,
    stockQuantity: 10,
    shortRating: ShortRating(rating: 5.0, ratingCount: 5),
    originalPrice: 25,
    description:
        'Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.',
    imagePaths: [
      AppAssets.productImagePath,
      AppAssets.productImagePath,
      AppAssets.productImagePath,
    ],
    name: 'عطر شانيل 5 مل');
