import '../../../../../utils/constants/exports.dart';



class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title:  Text('Wiishlist',
        style: Theme.of(context).textTheme.headlineMedium ),
        centerTitle: true,
        actions: [
          CCircularIcon(icon: Iconsax.add, onPressed: ()=> Get.to(const HomeScreen()) ),
        ],
      ),
      body: Obx(
        () {
          if (controller.favoriteProductIds.isEmpty) {
            return const Center(child: Text('No favorite products yet.'));
          }
          return  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  CGridLayout(
                    //itemCount: details.length - 5,
                    itemCount: controller.favoriteProductIds.length,
                    itemBuilder: (_, index) {
                      // Find the Details object from the list using the product ID
                      final product = details.firstWhere(
                            (product) => product.id == controller.favoriteProductIds[index],
                        //orElse: () => null,
                      );

                      return CProductCardVertical(product: product);
                    }
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
