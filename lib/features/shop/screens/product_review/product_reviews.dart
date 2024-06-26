import '../../../../../utils/constants/exports.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const CAppBAr (title: Text('Reviews & Ratings'), showBackArrow: true),

      /// Body
      body: SingleChildScrollView(
        child:
        Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox (height: CSizes.spaceBtwItems),


            /// Overall Product Ratings
                  const COverallProductRating(),

                  const CRatingBarIndicator(rating: 3.5,),

                  Text('12,611', style: Theme.of(context).textTheme.bodySmall,),

                  const SizedBox(height: CSizes.spaceBtwSetions),

                  /// User Review List
                  const CUserReviewCard(),
                  const CUserReviewCard(),
                  const CUserReviewCard(),

                ],
            ),
        ),
      ),
    );
  }
}



