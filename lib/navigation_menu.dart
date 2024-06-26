
import '../../../../../utils/constants/exports.dart';


class NavigationMenu extends StatelessWidget {
  final List cartItems;
  const NavigationMenu({super.key,
    required this.cartItems
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = CHelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: Obx(
          () =>  NavigationBar(
          height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=> controller.selectedIndex.value = index,
            backgroundColor: dark ? CColor.dark : CColor.white,
            indicatorColor: dark ? CColor.dark.withOpacity(0.1) : CColor.white.withOpacity(0.1),
            destinations:const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Whishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingScreen(),
  ];
}