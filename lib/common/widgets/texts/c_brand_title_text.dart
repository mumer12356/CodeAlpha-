

import '../../../../utils/constants/exports.dart';


class CBrandTitleText extends StatelessWidget {
  const CBrandTitleText({
    required this.title,
     this.color,
    this.maxLines = 1,
    this.textAlign=TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    super.key,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,

      style: brandTextSizes == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes == TextSizes.large
        ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}
