
import '../../../../../utils/constants/exports.dart';



class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController.instance);


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            CPrimaryHeaderContainer(child: Column(
              children: [
                CAppBAr(title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(
                  color: CColor.white   ))),
                const SizedBox(
                    height: CSizes.spaceBtwItems),


                /// User Profile Card
                CUserProfileTile(
                  onPressed: ()=> Get.to(const ProfileScreen()),
                ),

                const SizedBox(
                    height: CSizes.spaceBtwSetions),
              ],
            ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),

            child: Column(
              children: [
                /// Account Setting
                const CSectionHeading (title: 'Account Settings', showActionButton: false),
                const SizedBox(height: CSizes.spaceBtwItems),


                CSettingsMenuTile(
                  icon: Iconsax.safe_home, title: 'My Addresses',
                  subTitle: 'Set shopping delivery address',
                  onTap: ()=> Get.to(const UserAddressScreen()),),


                const CSettingsMenuTile(icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout'),

                CSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                  onTap: ()=> Get.to( OrderScreen(cartItems: cartController.cartItems,)),
                ),


                const CSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                ),


                const CSettingsMenuTile (icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                const CSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                const CSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),




                /// App Setting
                const SizedBox(
                    height: CSizes.spaceBtwSetions),
                const CSectionHeading(title: 'App Settings',showActionButton: false,),
                const SizedBox(
                    height: CSizes.spaceBtwItems),

                const CSettingsMenuTile(
                    title:'Load Data' , subTitle: 'Upload Data to Your Cloud Firebase',
                    icon: Iconsax.document_upload, ),


                CSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Location',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch (value: true, onChanged: (value) {}),
                ), // TSettingsMenuTile
                CSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch (value: false, onChanged: (value) {}),
                ) , // TSettingsMenuTile
                CSettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch (value: false, onChanged: (value) {}),
                ),


                /// Logout Button
                 const SizedBox (height: CSizes.spaceBtwSetions),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton (
                      onPressed: () async {
                        await AuthenticationRepository.instance.logout();
                      },

                      child: const Text('Logout')),
                ), // SizedBox
                 const SizedBox(height: CSizes.spaceBtwSetions *2.5),
              ],
            ),
            ),
          ],
        ),
      )
      ,
    );
  }
}

