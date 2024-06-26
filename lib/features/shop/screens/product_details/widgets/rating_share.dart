import '../../../../../utils/constants/exports.dart';

class CRatingAndShare extends StatelessWidget {
  final Details product;

  const CRatingAndShare({
    super.key, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Rating
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Iconsax.star5,color: Colors.amber,size: 24,),
            const SizedBox(width: CSizes.spaceBtwItems / 2,),

            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                          text: product.rating.isNotEmpty ? product.rating : 'No Rating',
                          style: Theme.of(context).textTheme.bodyLarge ),
                      TextSpan(
                        text: product.ratingNumbers.isNotEmpty ? product.ratingNumbers : '',
                      ),



                    ]
                )
            )
          ],
        ),

        /// Share Button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: CSizes.iconMd,)),
      ],
    );
  }
}
