
import '../../../../../utils/constants/exports.dart';


class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBAr (showBackArrow: true, title: Text('Add new Address')),

      body: SingleChildScrollView(
        child: Padding (
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration (prefixIcon: Icon (Iconsax.user), labelText: 'Name')),
                const SizedBox (height: CSizes.spaceBtwInputField),
                TextFormField(decoration: const InputDecoration (prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number')),
                const SizedBox (height: CSizes.spaceBtwInputField),

                Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31,),
                      labelText: 'Street',
                      ),
                    )),
                    const SizedBox (height: CSizes.spaceBtwInputField),
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code,),
                      labelText: 'Postal Code',
                      ),
                    )),
                  ],
                ),

                const SizedBox (height: CSizes.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building,),
                        labelText: 'City',
                      ),
                    )),
                    const SizedBox (height: CSizes.spaceBtwInputField),
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity,),
                        labelText: 'State',
                      ),
                    )),
                  ],
                ),

                const SizedBox (height: CSizes.spaceBtwInputField),
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global,),
                    labelText: 'Country',
                  ),
                ),

                const SizedBox (height: CSizes.defaultSpace),
                
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                        child: const Text('Save')
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
