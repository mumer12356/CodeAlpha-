

import '../../../../utils/constants/exports.dart';

class CCoupenCode extends StatelessWidget {

  const CCoupenCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return CRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? CColor.dark : CColor.white,
      padding: const EdgeInsets.only(top: CSizes.sm ,bottom: CSizes.sm,right: CSizes.sm,left: CSizes.md),
      child: Row(
        children: [
          /// TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a Promo Code? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark? CColor.white.withOpacity(0.5) : CColor.dark.withOpacity(0.5),
                      backgroundColor: CColor.grey.withOpacity(0.2),
                      side: BorderSide(color:  CColor.grey.withOpacity(0.1))
                  ),
                  onPressed: (){}, child: const Text('Apply')))
        ],
      ),
    );
  }
}
