import '../../../../../utils/constants/exports.dart';


class ImageController extends GetxController {
  var imageUrl = ''.obs;

  Future<void> fetchImageUrl(String path) async {
    try {
      String url = await FirebaseStorage.instance.ref(path).getDownloadURL();
      imageUrl.value = url;
    } catch (e) {
      print("Failed to load image: $e");
      imageUrl.value = ''; // Set to a default value or handle error appropriately
    }
  }
}
