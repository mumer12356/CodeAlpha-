

import '../../../../utils/constants/exports.dart';


class CCircularIcon extends StatelessWidget {
  const CCircularIcon({
    super.key, this.width, this.height,
    required this.icon, this.color, this.backgroundColor, this.onPressed, this.size= CSizes.lg,
  });


  final double? width;
  final double? height , size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor !=null ?
            backgroundColor! : CHelperFunctions.isDarkMode(context) ?
        CColor.black.withOpacity(0.9) : CColor.white.withOpacity(0.9),
      ),
      child:  IconButton(onPressed: onPressed,
        icon: Icon(icon , color: color,size: size,),
      ),
    );
  }
}
