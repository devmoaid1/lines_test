import 'package:lines_test/features/product_details/data/models/product.dart';

import '../app_assets.dart';

final recommendedProducts = [
  const RecommendedProduct(
      id: 2,
      relativeId: 1,
      stockQuantity: 10,
      currentPrice: 2500,
      originalPrice: 3000,
      description:
          'Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.',
      imagePaths: [
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
      ],
      name: 'عطر شانيل 5 مل'),
  const RecommendedProduct(
      id: 4,
      relativeId: 1,
      stockQuantity: 10,
      currentPrice: 2500,
      originalPrice: 3000,
      description:
          'Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.',
      imagePaths: [
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
      ],
      name: 'عطر رجالي'),
  const RecommendedProduct(
      id: 3,
      relativeId: 1,
      stockQuantity: 10,
      currentPrice: 2500,
      originalPrice: 3000,
      description:
          'Lorem ipsum dolor sit amet, ipiscingisl amet orci ipsum dis lectus hac mauris.',
      imagePaths: [
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
        AppAssets.recommendedProductImagePath,
      ],
      name: 'عطر رجالي'),
];
