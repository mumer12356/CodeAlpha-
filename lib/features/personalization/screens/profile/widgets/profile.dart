
import '../../../../../utils/constants/exports.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;


    return Scaffold(
      appBar: const CAppBAr (showBackArrow: true, title: Text('Profile'),

      ),

        ///
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column (
            children: [
              /// Profile Picture
            SizedBox(
            width: double.infinity,
            child: Column(
                children: [
                   Obx((){
                     final networkImage = controller.user.value.profilePicture;
                     final image = networkImage.isNotEmpty ?  networkImage :CImages.user;
                     return controller.imageUploading.value
                         ? const CShimmerEffect(width: 80, height: 80,radius: 80,)
                         : CCircularImage(image: image, width: 80, height: 80,
                       //isNetworkImage: networkImage.isNotEmpty,
                       isNetworkImage: true,
                     );
                   }),
            TextButton (onPressed: ()=> controller.uploadUserProfilePicture(),
                child: const Text('Change Profile Picture')),
                ],
            ),
            ),

              /// Details
              const SizedBox (height: CSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItems),


              /// Heading Profile Info
              const CSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox (height: CSizes.spaceBtwItems),


              /// Change name method not Working
              CProfileMenu(
                title: 'Name',
                value: controller.user.value.fullName,
                onPressed: ()=> Get.to(()=> const ChangeName())
              ),

              CProfileMenu(title: 'Username',
                  value: controller.user.value.username,
                  onPressed: () {}
              ),
              const SizedBox (height: CSizes.spaceBtwItems),
              const Divider(),
              const SizedBox (height: CSizes.spaceBtwItems),

          /// Heading Personal Info
          const CSectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: CSizes.spaceBtwItems),

              CProfileMenu(title: 'User ID',
                  value: controller.user.value.id, onPressed: () {}),

              CProfileMenu(title: 'E-mail',
                  value: controller.user.value.email, onPressed: () {}),

              CProfileMenu(title: 'Phone Number',
                  value: controller.user.value.phoneNumber, onPressed: () {}),

              CProfileMenu(title: 'Gender',
                  value: 'Male', onPressed: () {}),

              CProfileMenu(title: 'Date of Birth', value: '10 Oct, 1994', onPressed: () {}),


              const Divider(),
              const SizedBox (height: CSizes.spaceBtwItems),

              /// Button
              Center(
                child: TextButton(
                    onPressed: ()=> controller.deleteAccountWarningPopup(),
                    child: const Text('Close Account',style: TextStyle(color: Colors.red),)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

