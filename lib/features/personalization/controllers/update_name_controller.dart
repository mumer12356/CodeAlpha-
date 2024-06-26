
import '../../../../../utils/constants/exports.dart';


/// Controller to manage user-related functionality.
class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();


  /// init user data when Home Screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }


  /// Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName()async{

    if(updateUserNameFormKey.currentState!.validate()){
      try{
        // Show loading message
        CFullScreenLoader.openLoadingDialog("We are updating Your Information...", CImages.docerAnimation);

        /// Check Internet Connectivity
        final isConnected = await NetworkManager.instance.isConnected();
        if (!isConnected) {
          CFullScreenLoader.stopLoading();
          return;
        }

        // Form validation
        if(!updateUserNameFormKey.currentState!.validate()){
          CFullScreenLoader.stopLoading();
          return;
        }

        // update user's first & last name in the Firebase Firestore
        Map<String, dynamic> name = {'FirstName': firstName.text.trim(), 'LastName': lastName.text.trim()};
        await userRepository.updateSingleField(name);


        // Update the Rx User value
        userController.user.value.firstName ==  firstName.text.trim();
        userController.user.value.lastName == lastName.text.trim();

        // Remove Loader
        CFullScreenLoader.stopLoading();

        // Show Success Message
        CLoaders.successSnackBar (title: 'Congratulations', message: 'Your Name has been updated.');

        // Move to previous screen.
        Get.off(()=> const ProfileScreen());

      }
      catch(e){
        CFullScreenLoader.stopLoading();
        CLoaders.errorSnackBar(title: "Oh Snap!",message: e.toString());
      }
    }

  }

}

///
//
// import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
// import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../../../common/widgets/loaders/c_loader.dart';
// import '../../../data/repositories/authentication/user/user_repository.dart';
// import '../../../utils/constants/image_strings.dart';
// import '../../../utils/network_manager/network_manager.dart';
// import '../../../utils/popups/full_screen_loader.dart';
//
// /// Controller to manage user-related functionality.
// class UpdateNameController extends GetxController {
//   static UpdateNameController get instance => Get.find();
//
//   final firstName = TextEditingController();
//   final lastName = TextEditingController();
//   final userController = UserController.instance;
//   final userRepository = Get.put(UserRepository());
//   GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();
//
//   /// init user data when Home Screen appears
//   @override
//   void onInit() {
//     initializeNames();
//     super.onInit();
//   }
//
//   /// Fetch user record
//   Future<void> initializeNames() async {
//     firstName.text = userController.user.value.firstName;
//     lastName.text = userController.user.value.lastName;
//   }
//
//   Future<void> updateUserName() async {
//     try {
//       // Show loading message
//       CFullScreenLoader.openLoadingDialog(
//           "We are updating Your Information...", CImages.docerAnimation);
//
//       /// Check Internet Connectivity
//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         CFullScreenLoader.stopLoading();
//         return;
//       }
//
//       // Form validation
//       if (!updateUserNameFormKey.currentState!.validate()) {
//         CFullScreenLoader.stopLoading();
//         return;
//       }
//
//       // update user's first & last name in the Firebase Firestore
//       Map<String, dynamic> name = {
//         'FirstName': firstName.text.trim(),
//         'LastName': lastName.text.trim()
//       };
//       await userRepository.updateSingleField(name);
//
//       // Update the Rx User value
//       userController.user.value.firstName;
//       firstName.text.trim();
//       //= firstName.text.trim();
//       userController.user.value.lastName;
//       lastName.text.trim();
//       //= lastName.text.trim();
//
//       // Remove Loader
//       CFullScreenLoader.stopLoading();
//
//       // Show Success Message
//       CLoaders.successSnackBar(
//           title: 'Congratulations', message: 'Your Name has been updated. Please Logout and Re-login again');
//
//       // Move to previous screen.
//       Get.off(() => ProfileScreen());
//     } catch (e) {
//       CFullScreenLoader.stopLoading();
//       CLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
//     }
//   }
// }
