import '../../../../../utils/constants/exports.dart';


class CBillingAmountSection extends StatelessWidget {
  const CBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    // Calculate subtotal from cart items
    double subtotal = cartController.totalPrice.value;

    // Example values for shipping fee and tax fee
    double shippingFee = 6.0;
    double taxFee = 6.0;

    // Calculate order total
    double orderTotal = subtotal + shippingFee + taxFee;

    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$$subtotal',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),

        const SizedBox(height: CSizes.spaceBtwItems / 2),

        /// Shipping Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$$shippingFee',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),

        const SizedBox(height: CSizes.spaceBtwItems / 2),

        /// Tax Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$$taxFee',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),

        const SizedBox(height: CSizes.spaceBtwItems / 2),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$$orderTotal',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
      ],
    );

  }
}
