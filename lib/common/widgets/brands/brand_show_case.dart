

import '../../../utils/constants/exports.dart';




class CBrandShowCase extends StatelessWidget {
  const CBrandShowCase({
    super.key, required this.images,this.isNetworkImage = false
  });

  final List<String> images;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      showBorder: true,
      borderColor: CColor.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItems),
      padding: const EdgeInsets.all(CSizes.md),
      child: Column(
        children: [
          /// Brand with Products Count
          const CBrandCard(showBorder: false),
          const SizedBox(height: CSizes.spaceBtwItems,),

          /// Brand Top 3 Product Images
          Row(
              children: images.map((image)=> brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){

  return Expanded(
      child:CRoundedContainer(
        height: 100,
        backgroundColor: CHelperFunctions.isDarkMode(context) ? CColor.darkGrey : CColor.light,
        margin: const EdgeInsets.only(right: CSizes.sm),
        padding: const EdgeInsets.all(CSizes.md),
        child:  Image(
            fit:  BoxFit.contain,
          image: image.contains('http') ? NetworkImage(image) : AssetImage(image) as ImageProvider,

        ),
      )
  );
}
