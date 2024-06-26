
import '../../../../../utils/constants/exports.dart';


class Store extends StatelessWidget {
   const Store({super.key});

  @override
  Widget build(BuildContext context) {
   // final categories = CategoryController.instance.featuredCategories;

    return DefaultTabController(
      //length: categories.length,
      length: 4,
      child: Scaffold(
        appBar: CAppBAr(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
             CCartCounterIcon( onPressed: (){})
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled){
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: CHelperFunctions.isDarkMode(context) ? CColor.black : CColor.white,
                  expandedHeight: 440,
      
                  flexibleSpace: Padding(
                      padding:const EdgeInsets.all(CSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
      
                      children: [
                        /// Search Bar
                        const SizedBox(height: CSizes.spaceBtwItems,),
      
                        const CSearchContainer(text: "Search in Store",
                        showBorder: true, showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
      
                        const SizedBox(height: CSizes.spaceBtwSetions ,),
      
      
                        /// Feature Brands
                        CSectionHeading(title: "Feature Brands",
                          onPressed: ()=> Get.to(()=> const AllBrandsScreen()),
                        ),
                        
                        const SizedBox(height: CSizes.spaceBtwItems / 1.5,),
      
                        CGridLayout(
                          mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index){
                              return const CBrandCard(
                                showBorder: false,
                              );
                            }
                        )
                      ],
                    ),
                  ),
                  /// Tabs
                  bottom: const CTabBar(
                    // tabs: categories.map((category)=>Tab(
                    //   child: Text(category.name),
                    // )).toList()

                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              // children: categories.map((category)=>
              //     CCategoryTab(category: category)).toList()
              children: [
                CCategoryTab(),
                CCategoryTab(),
                CCategoryTab(),
                CCategoryTab(),

              ],
            )
        ),
        
      ),
    );
  }
}
