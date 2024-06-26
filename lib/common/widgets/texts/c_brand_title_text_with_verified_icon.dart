

import '../../../../utils/constants/exports.dart';

class CBrandTitleWithVerifiedIcon extends StatelessWidget {
  const CBrandTitleWithVerifiedIcon({
     this.textColor, required this.title
    ,this.maxLines = 1, this.iconColor=CColor.primary,this.textAlign=TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    super.key,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(

          child:
          CBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),

        const SizedBox(width: CSizes.xs),
        const Icon(Iconsax.verify5 ,color:  CColor.primary,size: CSizes.iconXs,),
      ],
    );
  }
}

