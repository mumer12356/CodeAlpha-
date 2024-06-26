import '../../../../../utils/constants/exports.dart';



class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: CColor.primary,
          onPressed: ()=> Get.to(const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color:  CColor.white,),
      ),
      appBar: CAppBAr(
        showBackArrow: true,
        title: Text('Addresses',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding:EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              CSingleAddress(selectedAddress: true),
              CSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
