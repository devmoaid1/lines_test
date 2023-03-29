import 'package:lines_test/core/constants/mock/add_ons_mock.dart';
import 'package:lines_test/features/product_details/data/models/add_on.dart';

abstract class AddOnsRepository {
  List<AddOn> getProductAddOns({required int productId});
}

class AddOnsRepositoryImpl implements AddOnsRepository {
  @override
  List<AddOn> getProductAddOns({required int productId}) {
    return addonsMock.where((addOn) => addOn.productId == productId).toList();
  }
}
