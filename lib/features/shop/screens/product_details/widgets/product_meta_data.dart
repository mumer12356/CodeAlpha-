import '../../../../../utils/constants/exports.dart';


class CProductMetaData extends StatelessWidget {
  final Details product;

  const CProductMetaData({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController.instance);


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale TAg
            CRoundedContainer(
              radius: CSizes.sm,
              backgroundColor: CColor.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: CSizes.sm,vertical: CSizes.xs),
              child: Text(
                product.popularDiscountTag.isNotEmpty ? product.popularDiscountTag : 'N/A',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: CColor.black
              ),),
            ),
            const SizedBox(width: CSizes.spaceBtwItems),

            /// Price
            Row(
              children: [
                if (product.salePrice.isNotEmpty && product.salePrice != "0")
                Text(
                    controller.getProductPrice(product)['originalPrice']!,
                    style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                const SizedBox(width: CSizes.spaceBtwItems),
                CProductPrice(
                  price: controller.getProductPrice(product)['salePrice']!,
                  islarge: true,),
              ],
            ),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        /// Title
        CProductTitleText(
          title: product.popularName.isNotEmpty ? product.popularName : 'No Name',
        ),

        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const CProductTitleText(title: 'Status'),

            const SizedBox(width: CSizes.spaceBtwItems),
            Text(
                controller.getProductStockStatus(product.popularSubImages.length), // Assuming stock is based on the number of sub-images
                style: Theme.of(context).textTheme.titleMedium!),
          ],
        ),

        const SizedBox(height: CSizes.spaceBtwItems / 1.5),

        //
        Row(
          children: [
            CCircularImage(
                width: 32,
                height: 32,
               // overlayColor: dark ? CColor.white : CColor.black,
                image: CImages.mostly,
              isNetworkImage: true,
            ),
            CBrandTitleWithVerifiedIcon(
              title: product.brandName.isNotEmpty ? product.brandName : 'No Brand',
              brandTextSizes: TextSizes.medium,)

          ],
        )

      ],
    );
  }
}
