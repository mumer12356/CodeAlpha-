

import '../../../../utils/constants/exports.dart';

  
  class CCartItem extends StatelessWidget {
    final String selectedColor;
    final String selectedSize;
    final Details product;

    const CCartItem({
      super.key,required this.product, required this.selectedColor,
      required this.selectedSize,
    });
  
  
  
    @override
    Widget build(BuildContext context) {
      final controller = Get.put(ProductController.instance);

      return Row(
        children: [
          /// Images
          Obx(
              (){
                if (controller.isLoading.value) {
                  return const CircularProgressIndicator();
                }
                final imageUrl = controller.imageUrls[product.popularImages] ?? '';
                if (imageUrl.isEmpty) {
                  return const Center(child: Text('No Image'));
                }
                return  CRoundedImage(
                  isNetworkImage: true,
                  imageUrl: imageUrl,
                  width: 60, height: 60,
                  padding: const EdgeInsets.all(CSizes.sm),
                  backgroundColor: CHelperFunctions.isDarkMode(context) ? CColor.darkerGrey:CColor.light,
                );
              }
          ),
          const SizedBox(width: CSizes.spaceBtwItems,),
  
          /// Title , Price & Size
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CBrandTitleWithVerifiedIcon(
                    title: product.brandName),
                Flexible(
                    child: CProductTitleText(
                      title: product.popularName, maxLines: 1,)),
  
                //
                Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: selectedColor, style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: '  Size: ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: selectedSize, style: Theme.of(context).textTheme.bodyLarge),]
                  ),
                )
              ],
            ),
          )
        ],
      );
    }
  }
