
import '../../../utils/constants/exports.dart';



class CBrandCard extends StatelessWidget {
  const CBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: CRoundedContainer(
        padding: const EdgeInsets.all(CSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: CCircularImage(
                isNetworkImage: true,
                image: CImages.mostly,
                backgroundColor: Colors.transparent,
                //overlayColor: CHelperFunctions.isDarkMode(context) ? CColor.black : CColor.dark,
              ),
            ),


            const SizedBox(width: CSizes.spaceBtwItems / 2,),
            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CBrandTitleWithVerifiedIcon(
                      title: 'Nike',brandTextSizes: TextSizes.large  ),
                  Text(
                    '256 products with aascsa',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
