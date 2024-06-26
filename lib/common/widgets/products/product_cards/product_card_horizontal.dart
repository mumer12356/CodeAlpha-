

import '../../../../utils/constants/exports.dart';


class CProductCardHorizontal extends StatelessWidget {
  const CProductCardHorizontal({super.key});

  get dark => null;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return  Container(
        width: 310,
        padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CSizes.productImageRadius),
        color: dark ? CColor.darkerGrey : CColor.softGrey,
      ),
      child: Row(
        children: [

          CRoundedContainer(
            height: 120,
            backgroundColor: dark ? CColor.dark : CColor.light,
            padding: const EdgeInsets.all(CSizes.sm,),
            child: Stack(
              children: [
                SizedBox(
                    width: 120,
                    height: 120,
                    child: CRoundedImage(
                      imageUrl: CImages.prductImage1,
                      isNetworkImage: true,
                      applyImageRadius: true,)),

                /// Sale Tag
                Positioned(
                  top: 12,
                  child: CRoundedContainer(
                    radius: CSizes.sm,
                    backgroundColor: CColor.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: CSizes.sm,vertical: CSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: CColor.black
                    ),),
                  ),
                ),

                /// Favorite Icon Button
                const Positioned(
                  top: 0, right: 0,
                  child: CCircularIcon(
                    icon: Iconsax.heart5 , color: Colors.red,
                  ),
                )

              ],
            )
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: CSizes.sm,left: CSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CProductTitleText(title: 'Nike Half Sleeve Shirts',smallSize: true,),
                      SizedBox(height: CSizes.spaceBtwItems / 2,),

                      CBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                          child: CProductPrice(price: '256 ')),


                      /// Add to Card Button
                      Container(
                        decoration: const BoxDecoration(
                          color: CColor.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CSizes.cardRadiusMd),
                            bottomRight: Radius.circular (CSizes.productImageRadius),
                          ), //
                        ),
                        child: const SizedBox(
                          width:  CSizes.iconLg * 1.2,
                          height:  CSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add,color: Colors.white,)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
