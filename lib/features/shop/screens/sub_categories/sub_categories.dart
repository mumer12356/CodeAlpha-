
import '../../../../../utils/constants/exports.dart';


class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key,
  //  required this.subCategoryName
  });

 // final String subCategoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBAr(
        showBackArrow: true,
        title:  Text('Sub-Categories',
            style: Theme.of(context).textTheme.headlineSmall ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
        

          child: Column(
            children: [
              /// Banner
              CRoundedImage(
                  width: double.infinity,
                  imageUrl: CImages.prductImage1,
                isNetworkImage: true,
                applyImageRadius: true,
              ),

              const SizedBox(height: CSizes.spaceBtwSetions,),

              /// Sub-Categories
              Column(
                children: [
                  /// Headings
                 // CSectionHeading(title:  '$subCategoryName', onPressed: (){},),
                  const SizedBox(height: CSizes.spaceBtwItems / 2,),


                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: CSizes.spaceBtwItems,),
                        itemBuilder: (context, index) => const CProductCardHorizontal(),
                         ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
