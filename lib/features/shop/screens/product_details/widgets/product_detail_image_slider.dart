
import '../../../../../utils/constants/exports.dart';


class CProductImageSlider extends StatelessWidget {
  final Details product;



  const CProductImageSlider({
    super.key,required this.product
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController.instance);
    final dark = CHelperFunctions.isDarkMode(context);

    return CCurveEdgedWidget(
        child: Container(
          color:  dark  ? CColor.darkGrey : CColor.light,
          child: Stack(
            children: [
              /// Main Large Image
              SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(CSizes.productImageRadius * 2),
                  child: Center(
                    child: Obx(() {
                      if (controller.isLoading.value) {
                        return const CircularProgressIndicator();
                      }
                      final imageUrl = controller.imageUrls[product.popularImages] ?? '';
                      if (imageUrl.isEmpty) {
                        return const Center(child: Text('No Image'));
                      }
                      return Image.network(imageUrl);
                    }),
                  ),
                ),
              ),

              /// Image Slider
              Positioned(
                right: 0,
                bottom: 30,
                child: SizedBox(
                  height: 80,
                  child:  ListView.separated(
                    //itemCount: 4,
                   itemCount:  product.popularSubImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_,__)=> const SizedBox(width: CSizes.spaceBtwItems,),
                    itemBuilder: (_,index){
                      //final imageUrl = controller.imageUrls.values.toList()[index];
                      final imageUrl = product.popularSubImages[index];

                      return CRoundedImage(
                          width: 80,
                          backgroundColor: dark ? CColor.dark : CColor.white,
                          border: Border.all(color: CColor.primary),
                          padding: const EdgeInsets.all(CSizes.sm),
                          imageUrl: imageUrl,isNetworkImage: true,
                      );

                    }
                  ),
                ),
              ),


              /// Appbar Icons
              const CAppBAr(
                showBackArrow: true,
                actions: [CCircularIcon(icon: Iconsax.heart5,color: Colors.red,)],
              )
            ],
          ),
        )
    );
  }
}
