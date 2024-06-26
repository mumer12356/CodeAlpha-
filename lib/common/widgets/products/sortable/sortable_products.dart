

import '../../../../utils/constants/exports.dart';



class CSortableProducts extends StatelessWidget {
  const CSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        //
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort),),
          onChanged: (value){},
          items: [
            'Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity',
          ].map((option)=> DropdownMenuItem(value: option,child: Text(option))).toList(),
        ),
        const SizedBox(height: CSizes.spaceBtwSetions,),

        //
        CGridLayout(itemCount: 4,
          itemBuilder:(_,index){
            // return CProductCardVertical(
            //   product: product,
            //
            //     );
            return null;
          }

        )
      ],
    );
  }
}
