

import '../../../../utils/constants/exports.dart';


class CProductCardVertical extends StatelessWidget {
  final Details product; // Accepting Details object


  const CProductCardVertical({super.key, required this.product });


  @override
  Widget build(BuildContext context) {
    //final salePercentage = controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = CHelperFunctions.isDarkMode(context);
    final controller = Get.put(ProductController());


    /// Load the image when the widget is created
    controller.loadImage(product.popularImages);

    Future<void> showRemoveDialog(BuildContext context) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Remove Favorite'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Are you sure you want to remove this product from favorites?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Remove'),
                onPressed: () {
                  controller.removeFavorite(product);
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    /// Container with side paddings, color, edges, radius & shadows
    return GestureDetector(
      onTap: ()=> Get.to(ProductDetail(product: product)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CSizes.productImageRadius),
          color: dark ? CColor.darkerGrey : CColor.white,
        ),
        child: Column(
          children: [
            /// Thumnail , Whishlist Button , Discount Tag
            CRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark ? CColor.dark : CColor.light,
              child:  Stack(
                children: [
                  /// Thumbnail Images


                  Obx(
                  () {
                    if (controller.isLoading.value) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    final imageUrl = controller.imageUrls[product.popularImages] ?? '';
                    if (imageUrl.isEmpty) {
                      return const Center(child: Text('No Image'));
                    }
                    return CRoundedImage(
                      imageUrl: imageUrl,
                      applyImageRadius: true,
                      isNetworkImage: true,
                    );
                  }
                  ),


                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: CRoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: CColor.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: CSizes.sm,vertical: CSizes.xs),
                      child: Text(
                        //details[widget.index].popularDiscountTag,
                        product.popularDiscountTag.isNotEmpty ? product.popularDiscountTag : 'N/A',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: CColor.black
                      ),),
                    ),
                  ),

                  /// Favorite Icon Button
                   Obx(
                     (){
                       final isFavorite = controller.isFavorite(product);
                       return Positioned(
                         top: 0, right: 0,
                         child: CCircularIcon(
                           icon: isFavorite ? Iconsax.heart5 : Iconsax.heart,
                           color: Colors.red,
                           onPressed: () {
                             if (isFavorite) {
                               //controller.removeFavorite(product);
                               showRemoveDialog(context);
                             } else {
                               controller.addFavorite(product);
                             }
                           },
                         ),
                       );
                     }
                   )

                ],
              ),
            ),
            const SizedBox(height: CSizes.spaceBtwItems / 2),

            /// Details
            Padding(
                padding:const EdgeInsets.only(left: CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CProductTitleText(
                      //title: details[widget.index].popularName,
                      title: product.popularName.isNotEmpty ? product.popularName : 'No Name',
                      smallSize: true ),
                  const SizedBox(height: CSizes.spaceBtwItems / 2),

                  CBrandTitleWithVerifiedIcon(
                     // title: details[widget.index].brandName
                    title: product.brandName.isNotEmpty ? product.brandName : 'No Brand',
                  ),


                ],
              ),
            ),
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Flexible(
                  child: Column(
                    children: [
                      // Original Price
                      if (product.salePrice.isNotEmpty && product.salePrice != "0")
                        Padding(
                          padding: const EdgeInsets.only(left: CSizes.sm),
                          child: Text(
                            controller.getProductPrice(product)['originalPrice']!,
                            style: Theme.of(context).textTheme.labelMedium!.apply(decoration: TextDecoration.lineThrough),
                          ),
                        ),

                      /// Price, Show sale Price as main price if sale exit
                      Padding(
                        padding: const EdgeInsets.only(left: CSizes.sm),
                        child: CProductPrice(
                          price: controller.getProductPrice(product)['salePrice']!,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Add to Card Button
                Container(
                  decoration: const BoxDecoration(
                    color: CColor.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CSizes.cardRadiusMd),
                      bottomRight: Radius.circular (CSizes.productImageRadius),
                    ), //
                  ),
                  child: const SizedBox(
                    width:  CSizes.iconLg * 1.2,
                    height:  CSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add,color: Colors.white,)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



