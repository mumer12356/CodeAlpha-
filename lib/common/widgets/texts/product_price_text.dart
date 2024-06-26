

import '../../../../utils/constants/exports.dart';



class CProductPrice extends StatelessWidget {
  const CProductPrice({
    super.key,
    this.currencySign = '\$',
    this.islarge = false,
    required this.price, this.lineThrough = false,
    this.maxLines = 1,
  });

  final String currencySign, price;
  final int maxLines;
  final bool islarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: islarge ?
      Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null) :
      Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
    );
  }
}
