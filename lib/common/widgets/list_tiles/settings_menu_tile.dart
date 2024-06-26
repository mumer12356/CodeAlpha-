

import '../../../../utils/constants/exports.dart';


class CSettingsMenuTile extends StatelessWidget {
  const CSettingsMenuTile({super.key,
    required this.title, required this.subTitle, this.trailing, required this.icon, this.onTap });


  final String title, subTitle;
  final Widget? trailing;
  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: CColor.primary ),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle,style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
