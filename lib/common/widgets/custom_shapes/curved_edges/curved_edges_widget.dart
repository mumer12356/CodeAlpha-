

import '../../../../utils/constants/exports.dart';


class CCurveEdgedWidget extends StatelessWidget {
  const CCurveEdgedWidget({
    super.key, required this.child
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CCustomCurvedEdges(),
        child: child

    );
  }
}
