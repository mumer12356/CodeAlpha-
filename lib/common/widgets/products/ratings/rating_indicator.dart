
import '../../../../utils/constants/exports.dart';


class CRatingBarIndicator extends StatelessWidget {
  const CRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: CColor.grey,
      itemBuilder: (_,__)=> const Icon(Iconsax.star1, color: CColor.primary,),
    );
  }
}
