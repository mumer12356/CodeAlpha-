import '../../../../../utils/constants/exports.dart';



class CBillingPaymentSection extends StatelessWidget {
  const CBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       CSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){} ),
       Text('Coding with Umer',style: Theme.of(context).textTheme.bodyLarge,),

       const SizedBox(width: CSizes.spaceBtwItems,),
       Row(
         children: [
           const Icon(Icons.phone, color: Colors.grey,size: 16,),
           const SizedBox(width: CSizes.spaceBtwItems,),
           Text('+92 317-0206476',style: Theme.of(context).textTheme.bodyMedium,),
         ],
       ),
       const SizedBox(height: CSizes.spaceBtwItems / 2,),
       Row(
         children: [
           const Icon(Icons.location_history, color: Colors.grey,size: 16,),
           const SizedBox(width: CSizes.spaceBtwItems,),
           Text('South Liana, Miane 87695, USA ',style: Theme.of(context).textTheme.bodyMedium,),

         ],
       )
     ],
    );

  }
}
