import '../../../../utils/constants/exports.dart';



class CProductQuantityWithAddRemoveButton extends StatelessWidget {
  final Details product;

  const CProductQuantityWithAddRemoveButton({
    super.key,required this.product
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    final key = controller.generateProductKey(product);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CCircularIcon(
          onPressed: ()=> controller.removeItemFromCart(product),
          icon: Iconsax.minus,
          width: 32, height: 32,
          size: CSizes.md,
          color: CHelperFunctions.isDarkMode(context) ? CColor.white : CColor.black,
          backgroundColor: CHelperFunctions.isDarkMode(context) ? CColor.darkerGrey : CColor.light,
        ),

        const SizedBox(width: CSizes.spaceBtwItems,),

        Obx(() => Text('${controller.itemQuantities[key] ?? 0}', style: Theme.of(context).textTheme.titleSmall)),

        const SizedBox(width: CSizes.spaceBtwItems,),

        CCircularIcon(
            icon: Iconsax.add,
            width: 32, height: 32,
            size: CSizes.md,
            color:  CColor.white ,
            backgroundColor: CColor.primary,
          onPressed: () => controller.addItemToCart(product),
    ),
      ],
    );
  }
}
