import '../../../../../utils/constants/exports.dart';

class CheckoutScreen extends StatelessWidget {
  final List cartItems;
  const CheckoutScreen({super.key,required this.cartItems});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CAppBAr(
        showBackArrow: true,
        title:  Text('Order Review',style: Theme.of(context).textTheme.headlineSmall ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),

          /// Items In Cart
          child:  Column(
            children: [
               CCartItems(showAddRemoveButton: false,
                  cartItems: cartItems,
              ),
              const SizedBox(height: CSizes.spaceBtwSetions,),

              /// Coupen TextField
              const CCoupenCode(),

              const SizedBox(height: CSizes.spaceBtwSetions,),

              /// Billing Section
              CRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? CColor.black : CColor.white,
                padding: const EdgeInsets.all(CSizes.md),

                child: const Column(
                  children: [
                    /// Pricing
                    CBillingAmountSection(),
                    SizedBox(height: CSizes.spaceBtwItems,),


                    /// Divider
                    Divider(),
                    SizedBox(height: CSizes.spaceBtwItems,),

                    /// Payment Method
                    CBillingAddressSection(),
                    SizedBox(height: CSizes.spaceBtwItems,),


                    /// Address
                    CBillingPaymentSection(),

                  ],
                ),
              )

            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: ()=> Get.to(SuccessScreen(
                /// Change Image into succesful Icon
                image: CImages.accountCreated,isNetworkImage:true,

                title: 'Payment Success!',
                subTiltle: 'Your item will be shipped soon!', 
                onPressed: ()=> Get.offAll(()=>  NavigationMenu(cartItems: cartItems)),
            )),
            child: Obx((){
              final cartController = Get.find<CartController>();
              double orderTotal = cartController.totalPrice.value;
              return Text('Checkout \$$orderTotal');
            })
        ),
      ),
    );
  }
}

