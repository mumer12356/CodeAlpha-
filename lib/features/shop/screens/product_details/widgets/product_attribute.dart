import '../../../../../utils/constants/exports.dart';



class ProductAttribute extends StatelessWidget {
  final Details product;

  const ProductAttribute({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController.instance);
    final dark = CHelperFunctions.isDarkMode(context);

    // Initialize selected color and size if not already set
    if (controller.selectedColor.value.isEmpty && product.color1.isNotEmpty) {
      controller.selectedColor.value = product.color1;
    }
    if (controller.selectedSize.value.isEmpty && product.size1.isNotEmpty) {
      controller.selectedSize.value = product.size1;
    }

    return Column(
      children: [

        /// Selected Attribute Pricing & Description
        CRoundedContainer(
          padding: const EdgeInsets.all(CSizes.md),
          showBorder: false,
          backgroundColor: dark ? CColor.darkerGrey : CColor.grey,
          child: Column(
            children: [
              /// Title , Price & Stock Status
              Row(
                children: [
                  const CSectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: CSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CProductTitleText(title: 'Price:',smallSize: true,),
                          const SizedBox(width: CSizes.spaceBtwItems / 2),
                          /// Actual Price
                          Text(
                            product.variationPrice.isNotEmpty ? product.variationPrice : 'N/A',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: CSizes.spaceBtwItems),

                          CProductTitleText(
                            title: product.variationUnit.isNotEmpty ? product.variationUnit : '',

                          ),
                        ],
                      ),

                      Row(
                        children: [
                          const CProductTitleText(title: "Stock", smallSize: true,),
                          Text(
                            controller.getProductStockStatus(product.variationUnit.length), // Assuming stock is based on the number of variation-unit
                            style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation & Description
              CProductTitleText(
                title: product.variationDescription.isNotEmpty ? product.variationDescription : '',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),


        const SizedBox(height: CSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: CSizes.spaceBtwItems / 2 ),
            Wrap(
              spacing: 8,
              children: [
                Obx(
                  ()=> CChoiceChip(
                    text: product.color1.isNotEmpty ? product.color1 : 'No color',
                    selected: controller.selectedColor.value == product.color1,
                    onSelected: (value) {
                      controller.selectedColor.value = product.color1;
                    },
                  ),
                ),

                Obx(
                  ()=> CChoiceChip(
                      text: product.color2.isNotEmpty ? product.color2 : 'No color',
                    selected: controller.selectedColor.value == product.color2,
                    onSelected: (value) {
                      controller.selectedColor.value = product.color2;
                    },
                  ),
                ),

                Obx(
                  ()=> CChoiceChip(
                      text: product.color3.isNotEmpty ? product.color3 : 'No color',
                    selected: controller.selectedColor.value == product.color3,
                    onSelected: (value) {
                      controller.selectedColor.value = product.color3;
                    },
                  ),
                ),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CSectionHeading(title: 'Size',showActionButton: false,),
            const SizedBox(height: CSizes.spaceBtwItems / 2 ),
            Wrap(
              spacing: 8,
              children: [
                Obx(
                  ()=> CChoiceChip(
                      text: product.size1.isNotEmpty ? product.size1 : 'No size',
                    selected: controller.selectedSize.value == product.size1,
                    onSelected: (value) {
                      controller.selectedSize.value = product.size1;
                    },
                  ),
                ),

                Obx(
                      ()=> CChoiceChip(
                      text: product.size2.isNotEmpty ? product.size2 : 'No size',
                        selected: controller.selectedSize.value == product.size2,
                        onSelected: (value) {
                          controller.selectedSize.value = product.size2;
                        },
                      ),
                ),

                Obx(
                      ()=>CChoiceChip(
                      text: product.size3.isNotEmpty ? product.size3 : 'No size',
                        selected: controller.selectedSize.value == product.size3,
                        onSelected: (value) {
                          controller.selectedSize.value = product.size3;
                        },
                      ),
                ),
              ],
            ),
          ],
        ),




      ],
    );
  }
}

