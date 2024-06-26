import '../../../../../utils/constants/exports.dart';


class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBAr(
        showBackArrow: true,
        title:  Text('Popular Product'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),

          child: CSortableProducts(),
        ),
      ),
    );
  }
}

