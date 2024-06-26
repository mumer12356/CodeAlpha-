
import '../../../utils/constants/exports.dart';



class CTabBar extends StatelessWidget implements PreferredSize {
  const CTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Material(
      child: TabBar(
        tabs: tabs,
        isScrollable:  true,
        indicatorColor: CColor.primary,
        unselectedLabelColor: CColor.darkGrey,
        labelColor: dark ? CColor.white : CColor.primary,
      ),
    );


  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
