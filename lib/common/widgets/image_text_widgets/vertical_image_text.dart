
import '../../../../utils/constants/exports.dart';


import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;


class CVerticalImageText extends StatelessWidget {
  const CVerticalImageText({
    super.key,  this.textColor = Colors.white, this.backgroundColor = CColor.white,
    required this.title, required this.image, this.onTap, this.isNetworkImage = true
  });

  final Color textColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final String title, image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56, height: 56,
              padding: const EdgeInsets.all(CSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (CHelperFunctions.isDarkMode(context)? CColor.black : CColor.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              // child: Center(
              //   child: Image(
              //     image: AssetImage(image),
              //     fit: BoxFit.fitWidth,
              //     //color: CHelperFunctions.isDarkMode(context) ? CColor.light : CColor.dark,
              //   ),
              // ),
              child: Center(
                child: isNetworkImage
                    ? Image.network(
                  image,
                  fit: BoxFit.fitWidth,
                  // You can add other parameters like width, height, etc.
                )
                    : Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                  // You can add other parameters like width, height, etc.
                ),
              ),
            ),

            /// Text
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            SizedBox(
                width: 55,
                child: Text(title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
            ),
          ],
        ),
      ),
    );
  }
}



// Function to retrieve image URLs from Firebase Storage
Future<String> getImageUrl(String imagePath) async {
  // Get a reference to the Firebase Storage service
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // Create a reference to the image
  firebase_storage.Reference ref = storage.ref().child(imagePath);

  try {
    // Get the download URL for the image
    String downloadURL = await ref.getDownloadURL();
    return downloadURL;
  } catch (e) {
    print('Error getting download URL: $e');
    return ''; // Return empty string or handle error as needed
  }
}
