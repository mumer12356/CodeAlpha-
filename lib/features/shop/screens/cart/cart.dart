import '../../../../../utils/constants/exports.dart';



class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController.instance);

    return Scaffold(
      appBar: CAppBAr(
        showBackArrow: true,
        title:  Text('Cart',style: Theme.of(context).textTheme.headlineSmall ),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(CSizes.spaceBtwSetions),

        /// Items In Cart
        child: CCartItems(cartItems: cartController.cartItems,),
      ),


      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Obx(
            (){
              return  ElevatedButton(
                  onPressed: ()=> Get.to( CheckoutScreen(cartItems: cartController.cartItems)),
                child: Text('Checkout \$${cartController.totalPrice.value.toString()}'),
              );
            }
        ),
      ),
    );
  }
}


