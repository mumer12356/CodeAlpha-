import '../../../../../utils/constants/exports.dart';


class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBAr(
        showBackArrow: true,
        title:  Text('Brand'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const CSectionHeading(title: 'Brands'),
              const SizedBox(height: CSizes.spaceBtwItems,),

              /// Brands
              CGridLayout(itemCount: 10,mainAxisExtent: 80,
                  itemBuilder: (context, index) =>CBrandCard(showBorder: true,
                  onTap: ()=> Get.to(()=> const BrandProducts()),
                  )),


            ],
          ),
        ),
      ),
    );
  }
}
