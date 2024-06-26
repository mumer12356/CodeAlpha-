

import '../../../../../utils/constants/exports.dart';



class COrderListItems extends StatelessWidget {
  final List cartItems;

  const COrderListItems({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    // Calculate current date
    DateTime currentDate = DateTime.now();

    // Calculate shipping date (1 week ahead)
    DateTime shippingDate = currentDate.add(const Duration(days: 7));

    return ListView.separated(
      itemCount: cartItems.length,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: CSizes.spaceBtwItems),
      itemBuilder: (_, index) {
        final product = cartItems[index];
        return CRoundedContainer(
          showBorder: true,
          backgroundColor: dark ? CColor.black : CColor.white,
          padding: const EdgeInsets.all(CSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.ship),
                  const SizedBox(height: CSizes.spaceBtwItems / 2),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: CColor.primary,
                            fontWeightDelta: 1,
                          ),
                        ),
                        Text(
                          '${currentDate.day} ${_getMonthName(currentDate.month)} ${currentDate.year}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34, size: CSizes.iconSm),
                  ),
                ],
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.tag),
                        const SizedBox(height: CSizes.spaceBtwItems / 2),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '[#${product.id}]', // Replace with your order number logic
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.calendar),
                        const SizedBox(height: CSizes.spaceBtwItems / 2),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '${shippingDate.day} ${_getMonthName(shippingDate.month)} ${shippingDate.year}',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                
            ],
          ),
        );
      },
    );
  }

  // Helper function to get month name from month number
  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }
}
