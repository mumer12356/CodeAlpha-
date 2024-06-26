import '../../../../../utils/constants/exports.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///  App-Bar
                  CHomeAppBar(),
                  SizedBox(height: CSizes.spaceBtwSetions),

                  /// Search-Bar
                  CSearchContainer(
                    text: "Search in Store",
                  ),

                  SizedBox(
                      height: CSizes.spaceBtwItems),


                  ///  Categories
                  Padding(
                      padding: EdgeInsets.only(left:  CSizes.defaultSpace),
                    child: Column(
                      children: [

                        /// Heading
                        CSectionHeading(
                          title:  'Popular Categories',
                          showActionButton: false,
                          textColor: CColor.white,
                        ),
                        SizedBox(
                            height: CSizes.spaceBtwItemsSmall),

                        /// Categories
                        CHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: CSizes.spaceBtwSetions),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),

              /// Promo Slider
              child: Column(
                children: [
                  CPromoSlider(
                    banners: [

                       CImages.promoBanner1,
                       CImages.promoBanner2,
                      CImages.promoBanner3,
                    ],
                  ),

                  const SizedBox(height: CSizes.spaceBtwSetions),


                  /// Heading
                  CSectionHeading(title: "Popular Products",
                    onPressed: () => Get.to(()=> const AllProductsScreen()),
                  ),
                  const SizedBox(height: CSizes.spaceBtwItems),

                  /// Popular Product
                  CGridLayout(
                    itemCount: details.length - 5, // Only show items from index 5 onwards
                    itemBuilder: (_, index) => CProductCardVertical(
                      product: details[index + 5],
                      //index: index + 5
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}












