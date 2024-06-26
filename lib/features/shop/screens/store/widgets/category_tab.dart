import '../../../../../utils/constants/exports.dart';


class CCategoryTab extends StatelessWidget {
  const CCategoryTab({super.key, });



  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(ProductController());
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            CBrandShowCase(
                images: [CImages.prductImage1,CImages.prductImage2,CImages.prductImage1],
            isNetworkImage: true,
            ),
            CBrandShowCase(
                images: [CImages.prductImage2,CImages.prductImage2,CImages.prductImage1],
            isNetworkImage: true,
            ),
            const SizedBox(height: CSizes.spaceBtwItems ),

            /// Products
            CSectionHeading(title: 'You Might Like',onPressed: (){} ),
            const SizedBox(height: CSizes.spaceBtwItems,),

            CGridLayout(itemCount: details.length - 5,
                itemBuilder: (_,index) {
                  return null;
                }
                //     CProductCardVertical(
                //     product: ProductModel.empty(),
                //     //index: index + 5
                //   //productId: controller.featuredProducts[index].id,
                // )
            ),
            const SizedBox(height: CSizes.spaceBtwSetions,),
          ],
        ),
      ),

    ],
    );
  }
}
