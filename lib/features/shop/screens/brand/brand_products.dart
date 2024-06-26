import '../../../../../utils/constants/exports.dart';


class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBAr(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              CBrandCard(showBorder: true),
              SizedBox(height: CSizes.spaceBtwSetions ),

              CSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
