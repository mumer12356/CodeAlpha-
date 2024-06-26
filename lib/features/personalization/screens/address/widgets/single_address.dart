
import '../../../../../utils/constants/exports.dart';



class CSingleAddress extends StatelessWidget {
  const CSingleAddress({super.key, required this.selectedAddress });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return  CRoundedContainer(
      padding: const EdgeInsets.all(CSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? CColor.primary.withOpacity(0.5) : Colors.transparent,
      borderColor:  selectedAddress ? Colors.transparent :dark
      ? CColor.darkerGrey : CColor.grey,
      margin: const EdgeInsets.only(bottom:  CSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:  selectedAddress ? dark ? CColor.light : CColor.dark : null,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: CSizes.sm / 2,),

              const Text("(+123) 456 7890",maxLines: 1,
                overflow: TextOverflow.ellipsis,),


              const SizedBox(height: CSizes.sm / 2,),
              const Text('82356 Timmy coves, Soith Liana, MAine, 87665, USA',
              softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
