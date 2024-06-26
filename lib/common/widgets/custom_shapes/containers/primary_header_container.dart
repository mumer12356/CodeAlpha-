

import '../../../../utils/constants/exports.dart';



class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return CCurveEdgedWidget(
      child:  Container(
        color: CColor.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CCircularContainer(
                backgroundColor: CColor.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CCircularContainer(
                backgroundColor: CColor.white.withOpacity(0.1),
              ),
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
