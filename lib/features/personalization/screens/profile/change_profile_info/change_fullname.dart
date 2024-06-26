

import '../../../../../utils/constants/exports.dart';


  class ChangeName extends StatelessWidget {
    const ChangeName({super.key});

    @override
    Widget build(BuildContext context) {
      final controller = Get.put(UpdateNameController());
      return Scaffold(
        appBar: CAppBAr(
          title: Text(
            'Change Name',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Form(
            key: controller.updateUserNameFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Headings
                Text(
                  "Use real name for easy verification. This name will appear on several pages",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: CSizes.spaceBtwSetions),

                /// Text Field & Button
                TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      CValidator.validateEmptyText('First Name', value!),
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: CTexts.firstName,
                  ),
                ),

                const SizedBox(height: CSizes.spaceBtwSetions),

                TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      CValidator.validateEmptyText('Last Name', value!),
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: CTexts.lastName,
                  ),
                ),

                const SizedBox(height: CSizes.spaceBtwSetions),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.updateUserName(),
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
