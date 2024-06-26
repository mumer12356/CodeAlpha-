
import '../../../../utils/constants/exports.dart';



class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.child,
    this.margin ,
    this.radius = CSizes.cardRadiusLg,
    this.backgroundColor = CColor.white,
    this.showBorder=false,
    this.borderColor = CColor.borderprimary,

  });
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}
