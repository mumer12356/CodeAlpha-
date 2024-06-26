
import '../../../../utils/constants/exports.dart';



class CCartCounterIcon extends StatelessWidget {
  const CCartCounterIcon({
    super.key,  this.iconColor=Colors.pink, required this.onPressed,
    this.counterBgColor, this.counterTextColor,
  });

  final Color? iconColor , counterBgColor , counterTextColor ;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    final dark = CHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(const CartScreen()),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Obx(() {
            return Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: counterBgColor ?? (dark ? CColor.white : CColor.black),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  '${controller.cartItems.length}',
                  style: Theme.of(context).textTheme.labelLarge?.apply(
                    color: CColor.white,
                    fontSizeFactor: 0.8,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
