


import '../../../../../utils/constants/exports.dart';


class CPromoSlider extends StatelessWidget {
  const CPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final BannerController bannerController =Get.put(BannerController());

    return Obx(
        (){
          if (bannerController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (bannerController.categories.isEmpty) {
            return const Center(child: Text('No Data Found!'));
          }
          return Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) => controller.updatePageIndicator(index)
                ),
                items: banners.map((url) => CRoundedImage(imageUrl : url,isNetworkImage: true
                  ,)).toList(),

              ),
              const SizedBox(
                  height: CSizes.spaceBtwItems),

              Center(
                child: Obx(
                      ()=> Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for(int i=0 ; i < 3; i++)
                        CCircularContainer(
                          width: 20 , height: 4,
                          margin: const EdgeInsets.only(right: 10),
                          backgroundColor: controller.crouselCurrentIndex.value == i  ?
                          CColor.primary : CColor.grey,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

    );
  }
}
