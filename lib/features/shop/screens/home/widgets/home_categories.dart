
import '../../../../../utils/constants/exports.dart';


class CHomeCategories extends StatelessWidget {
  const CHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController = Get.put(CategoryController());

    return Obx(
      (){
        if (categoryController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (categoryController.categories.isEmpty) {
          return const Center(child: Text('No Data Found!'));
        }
        return SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoryController.categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final CategoryModel category = categoryController.categories[index];

              return CVerticalImageText(
                image:  category.image,
                title: category.name,
                onTap: () {
                  // Handle onTap action
                  Get.to(() => const SubCategoriesScreen(
                    //subCategoryName: category.subCategoryNames,
                  ));
                },
              );
            },
          ),
        );

      }
    );
  }
}
