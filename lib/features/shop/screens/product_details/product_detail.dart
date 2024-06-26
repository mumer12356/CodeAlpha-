
import '../../../../../utils/constants/exports.dart';



class ProductDetail extends StatelessWidget {
  final Details product;
  const ProductDetail({super.key, required this.product
  });

  //final ProductModel product;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CBottomAddToCart(product: product,),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            CProductImageSlider(
              product: product,
            ),

            /// 2 - Product Details
            Padding(
                padding:const EdgeInsets.only(right: CSizes.defaultSpace,left: CSizes.defaultSpace,bottom: CSizes.defaultSpace),
              child: Column(

                children: [
                  /// Rating & share Button
                  CRatingAndShare(product: product),

                  /// Price, Title , Stock & Brand
                  CProductMetaData(product: product,),

                  /// Attributes
                  ProductAttribute(product: product,),
                  const SizedBox(height: CSizes.spaceBtwSetions),


                  /// Checkout Buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                        child: const Text('Checkout')
                    ),
                  ),

                  const SizedBox(height: CSizes.spaceBtwSetions),


                  /// Description
                  const CSectionHeading(title: 'Description' ,showActionButton: false,),
                  const SizedBox(height: CSizes.spaceBtwItems),

                  ReadMoreText(
                    product.wholeDescription.isNotEmpty ? product.wholeDescription : 'No Description',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                /// Reviews
                const Divider(),
                const SizedBox (height: CSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CSectionHeading(
                      title: 'Reviews ${product.ratingNumbers.isNotEmpty ? product.ratingNumbers : ''}',
                      showActionButton: false,),
                    IconButton(onPressed: ()=> Get.to(const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                  ],
                ),
                const SizedBox (height: CSizes.spaceBtwSetions),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}


