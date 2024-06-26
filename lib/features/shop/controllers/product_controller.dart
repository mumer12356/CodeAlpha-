import '../../../../../utils/constants/exports.dart';


class ProductController extends GetxController{
  static ProductController get instance => Get.find();

  var isLoading = false.obs;
  var imageUrls = <String, String>{}.obs;
  var favoriteProductIds = <String>[].obs;


  // Add observable variables for selected color and size
  var selectedColor = ''.obs;
  var selectedSize = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _loadCachedImages();
    loadFavoriteProducts();
  }

  void addFavorite(Details product) {
    if (!favoriteProductIds.contains(product.id)) {
      favoriteProductIds.add(product.id);
      saveFavoriteProducts();
    }
  }

  void removeFavorite(Details product) {
    favoriteProductIds.remove(product.id);
    saveFavoriteProducts();
  }

  bool isFavorite(Details product) {
    return favoriteProductIds.contains(product.id);
  }


  Future<void> saveFavoriteProducts() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('favoriteProductIds', favoriteProductIds);
  }

  Future<void> loadFavoriteProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteProductIdsData = prefs.getStringList('favoriteProductIds') ?? [];
    favoriteProductIds.value = favoriteProductIdsData;
  }


  Future<void> loadImage(String path) async {
    if (imageUrls.containsKey(path) && imageUrls[path]!.isNotEmpty) {
      // Image URL is already cached, no need to load it again
      return;
    }

    isLoading.value = true;
    try {
      String url = await FirebaseStorage.instance.ref(path).getDownloadURL();
      imageUrls[path] = url;
      _cacheImageUrl(path, url);
    } catch (e) {
      print('Failed to load image from Firebase Storage: $e');
      imageUrls[path] = ''; // Ensure empty URL on error
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _cacheImageUrl(String path, String url) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(path, url);
  }

  Future<void> _loadCachedImages() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();

    for (var key in keys) {
      imageUrls[key] = prefs.getString(key) ?? '';
    }
  }




  /// Get the product price or price range for variation
  Map<String, String> getProductPrice(Details product) {
    double originalPrice = double.tryParse(product.popularPrice) ?? 0.0;
    double salePrice = double.tryParse(product.salePrice) ?? 0.0;

    if (salePrice > 0 && salePrice < originalPrice) {
      return {
        'originalPrice': '\$$salePrice',
        'salePrice': '$originalPrice'
      };
    } else if (salePrice > originalPrice) {
      return {
        'originalPrice': '',
        'salePrice': '$originalPrice - \$$salePrice'
      };
    } else {
      return {
        'originalPrice': '$originalPrice',
        'salePrice': ''
      };
    }
  }


  /// Calculate Discount Percentage
  String? calculateSalePercentage(double originalPrice, double? salePrice) {
    if (salePrice == null || salePrice <= 0.0) return null;
    if (originalPrice <= 0) return null;

    double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
    return percentage.toStringAsFixed(0);
  }

  /// Check Product Stock Status
  String getProductStockStatus(int stock) {
    return stock > 0 ? 'In Stock' : 'Out of Stock';
  }
}

