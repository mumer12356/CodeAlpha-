
import '../../../../../utils/constants/exports.dart';


class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller =Get.put(UserController());
    return CAppBAr(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium?.apply(color: CColor.grey) ?? const TextStyle(color: CColor.grey),
          ),
          Obx(
            (){
              if(controller.profileLoading.value){
                // Display a shimmer loader while user profile is being loaded
                return const CShimmerEffect(width: 90, height: 15);
              }else{
                return  Text(
                  controller.user.value.fullName,
                  style: Theme.of(context).textTheme.headlineSmall?.apply(color: CColor.grey) ?? const TextStyle(color: CColor.grey),
                );
              }
            }),
        ],
      ),
      actions: [
        CCartCounterIcon(
          onPressed: (){},
          iconColor: CColor.white,),
      ],
    );
  }
}
