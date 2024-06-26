

import '../../../utils/constants/exports.dart';



class CChoiceChip extends StatelessWidget {
  const CChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = CHelperFunctions.getColor(text)!= null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? CColor.white : null),
      
        avatar: isColor
        ? CCircularContainer(width: 50,height: 50,backgroundColor: CHelperFunctions.getColor(text)!)
        : null ,
      
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding:isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? CHelperFunctions.getColor(text)! : null  ,
      ),
    );
  }
}
