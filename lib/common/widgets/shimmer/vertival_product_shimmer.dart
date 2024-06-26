

import '../../../../utils/constants/exports.dart';


class CVerticalProductShimmer extends StatelessWidget {
  const CVerticalProductShimmer({super.key,
  this.itemCount = 2
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return CGridLayout(
        itemCount: itemCount,
        itemBuilder: (_,__)=> const SizedBox(
          width: 188,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              ///Image
              CShimmerEffect(width: 180, height: 180),
              SizedBox(height: CSizes.spaceBtwItems,),

              /// Text
              CShimmerEffect(width: 160, height: 15),
              SizedBox(height: CSizes.spaceBtwItems / 2,),
              CShimmerEffect(width: 110, height: 15),
            ],
          ),
        )
    );
  }
}
