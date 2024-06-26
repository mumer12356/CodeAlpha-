import '../../../../../utils/constants/exports.dart';


class CCartItems extends StatelessWidget {
  const CCartItems({super.key,
    this.showAddRemoveButton = true,
    required this.cartItems
  });

  final List cartItems;
  final bool showAddRemoveButton ;
  @override
  Widget build(BuildContext context) {
    final controller =Get.put(CartController());
    final productController = Get.put(ProductController());
    return Obx(
        (){
          if(controller.cartItems.isEmpty){
            return const Center(child: Text('Your cart is empty'),);
          }
          else{
            return ListView.separated(
              shrinkWrap: true,
             // itemCount: 2,
              itemCount: controller.cartItems.length,
              separatorBuilder: (_,__)=> const SizedBox(height: CSizes.spaceBtwSetions,),
              itemBuilder: (_,index) {
                final product =controller.cartItems[index];

                return  Column(
                  children: [
                    /// Cart Items
                    CCartItem(
                        selectedColor: productController.selectedColor.value,
                        selectedSize: productController.selectedSize.value,
                        product: product),

                    if(showAddRemoveButton) const SizedBox(height: CSizes.spaceBtwItems,),


                    /// Add Remove Button Row with total Price
                    if(showAddRemoveButton)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 70 ),

                              /// Add Remove Button
                              CProductQuantityWithAddRemoveButton(
                                product: product,
                              ),
                            ],
                          ),

                          CProductPrice(price: product.popularPrice),


                        ],
                      )

                  ],
                );
              }
            );
          }
        }
    );
  }
}
