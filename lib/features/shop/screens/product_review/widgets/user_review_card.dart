
import '../../../../../utils/constants/exports.dart';

class CUserReviewCard extends StatelessWidget {
  const CUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              children: [
                CircleAvatar(backgroundImage: NetworkImage(CImages.profileImage1),),
                const SizedBox(width: CSizes.spaceBtwItems,),

                Text('John doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){},
                icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems,),

        /// Review
        Row(
          children: [
            const CRatingBarIndicator(rating: 4),
            const SizedBox(width: CSizes.spaceBtwItems,),
            Text('01 June, 2024',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seanlessly. Great job!',
          trimLines: 1,
          trimExpandedText: ' Show less',
          trimMode: TrimMode.Line,
          trimCollapsedText: " Show more",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: CColor.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: CColor.primary),
        ),
        const SizedBox(height: CSizes.spaceBtwItems,),




        /// Cpmpany Review
        CRoundedContainer(
          backgroundColor:  dark ? CColor.darkerGrey : CColor.grey,
          child: Padding(
              padding: const EdgeInsets.all(CSizes.sm),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Umer's Store",style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 june, 2024",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: CSizes.spaceBtwItems,),

                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seanlessly. Great job!',
                  trimLines: 1,
                  trimExpandedText: ' Show less',
                  trimMode: TrimMode.Line,
                  trimCollapsedText: " Show more",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: CColor.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: CColor.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: CSizes.spaceBtwSetions,),

      ],
    );
  }
}
