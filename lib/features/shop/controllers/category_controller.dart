import '../../../../../utils/constants/exports.dart';


class CategoryController extends GetxController {
  var isLoading = true.obs;
  var categories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('Categories').get();
      var categoriesList = snapshot.docs.map((doc) => CategoryModel.fromSnapshot(doc)).toList();
      categories.assignAll(categoriesList);
    } catch (e) {
      print("Error fetching categories: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
