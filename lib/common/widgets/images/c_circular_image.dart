

import '../../../../utils/constants/exports.dart';



class CCircularImage extends StatelessWidget {
  const CCircularImage({
    super.key,
    required this.image,
    this.overlayColor, this.backgroundColor,
    this.fit = BoxFit.cover,
    this.isNetworkImage= false,this.width=56,this.height=56,  this.padding= CSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width , height , padding ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        /// If image background color is null then switch it to light & dark mode color design
        color: backgroundColor ?? (CHelperFunctions.isDarkMode(context) ? CColor.black : CColor.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isNetworkImage
          ? CachedNetworkImage(
            fit: fit,
              color: overlayColor,
              imageUrl: image,
            progressIndicatorBuilder: (context, url, downloadProgress) => const CShimmerEffect(
                width: 55, height: 55, radius: 55,),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ) :
          Image(
            fit: fit,
            image:  AssetImage(image) ,
            color: overlayColor,
          ),
        ),
      )
    );
  }
}
