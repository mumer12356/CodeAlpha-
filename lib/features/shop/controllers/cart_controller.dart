

import '../../../../../utils/constants/exports.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  var cartItems = <Details>[].obs;
  var itemQuantities = <String, int>{}.obs; // Key: Product identifier, Value: Quantity
  var totalPrice = 0.0.obs;

  String generateProductKey(Details product) {
    return '${product.brandName}-${product.popularName}';
  }

  void addItemToCart(Details product) {
    final key = generateProductKey(product);
    if (itemQuantities.containsKey(key)) {
      itemQuantities[key] = itemQuantities[key]! + 1;
    } else {
      cartItems.add(product);
      itemQuantities[key] = 1;
    }
    updateTotalPrice();
  }

  void removeItemFromCart(Details product) {
    final key = generateProductKey(product);
    if (itemQuantities.containsKey(key)) {
      itemQuantities[key] = itemQuantities[key]! - 1;
      if (itemQuantities[key] == 0) {
        cartItems.remove(product);
        itemQuantities.remove(key);
      }
    }
    updateTotalPrice();
  }

  void incrementItemCount(Details product) {
    addItemToCart(product);
  }

  void decrementItemCount(Details product) {
    final key = generateProductKey(product);
    if (itemQuantities.containsKey(key) && itemQuantities[key]! > 0) {
      itemQuantities[key] = itemQuantities[key]! - 1;
      if (itemQuantities[key] == 0) {
        cartItems.remove(product);
        itemQuantities.remove(key);
      }
      updateTotalPrice();
    }
  }

  void updateTotalPrice() {
    totalPrice.value = cartItems.fold(0, (sum, item) {
      final key = generateProductKey(item);
      return sum + double.parse(item.popularPrice) * itemQuantities[key]!;
    });
  }
}
