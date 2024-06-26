
import '../../../../../utils/constants/exports.dart';


class CBottomAddToCart extends StatelessWidget {
  final Details product;

  const CBottomAddToCart({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    final dark = CHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: CSizes.defaultSpace, horizontal: CSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color:  dark ? CColor.darkerGrey : CColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(CSizes.cardRadiusLg),
          topRight: Radius.circular(CSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CCircularIcon(icon: Iconsax.minus,
              backgroundColor: CColor.darkGrey,
                width: 40,
                height: 40,
                color: CColor.white,
                onPressed: ()=> controller.decrementItemCount(product),
              ),


              const SizedBox(width: CSizes.spaceBtwItems),

              Obx(
                      ()=> Text(
                          '${controller.itemQuantities[controller.generateProductKey(product)] ?? 0}',

                          style: Theme.of(context).textTheme.titleSmall)),

              const SizedBox(width: CSizes.spaceBtwItems),

              CCircularIcon(icon: Iconsax.add,
                backgroundColor: CColor.black,
                width: 40,
                height: 40,
                color: CColor.white,
                onPressed: ()=> controller.incrementItemCount(
                  product
                ),
              ),

            ],
          ),

          ElevatedButton(
              onPressed: (){
                controller.addItemToCart(product);
                Get.to(const CartScreen());
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(CSizes.md),
                backgroundColor: CColor.black,
                side: const BorderSide(color: CColor.black),
              ),
              child: const Text('Add To Cart'))
        ],
      ),
    );
  }
}
