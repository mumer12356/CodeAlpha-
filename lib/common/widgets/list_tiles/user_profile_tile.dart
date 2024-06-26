
import '../../../../utils/constants/exports.dart';




class CUserProfileTile extends StatelessWidget {
  const CUserProfileTile({
    super.key, required this.onPressed,
  });


  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return ListTile(
      leading: CCircularImage( image: CImages.user, width: 50,isNetworkImage: true,
          height: 50,  padding: 0 ),

      title: Text(controller.user.value.fullName,style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColor.white)),
      subtitle: Text(controller.user.value.email,style: Theme.of(context).textTheme.bodyMedium!.apply(color: CColor.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: CColor.white,)),
    );
  }
}
