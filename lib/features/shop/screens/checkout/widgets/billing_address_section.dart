import '../../../../../utils/constants/exports.dart';


class CBillingAddressSection extends StatelessWidget {
  const CBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        CSectionHeading(title: 'Payment Method',
          buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: CSizes.spaceBtwItems / 2),

        Row(
          children: [
            CRoundedContainer(
              width: 60, height: 35,
              backgroundColor: dark ? CColor.light : CColor.white,
              padding: const EdgeInsets.all(CSizes.sm),
              child: Image(
                  image: NetworkImage(CImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: CSizes.spaceBtwItems / 2),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );

  }
}
