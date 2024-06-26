import '../../../../../utils/constants/exports.dart';



class BannerController extends GetxController{

  var isLoading = true.obs;
  var categories = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('Banners').get();
      var categoriesList = snapshot.docs.map((doc) => BannerModel.fromSnapshot(doc)).toList();
      categories.assignAll(categoriesList);
    } catch (e) {
      print("Error fetching banners: $e");
    } finally {
      isLoading.value = false;
    }
  }
}