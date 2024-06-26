
import '../../../../utils/constants/exports.dart';


class OrderScreen extends StatelessWidget {
  final List cartItems;
  const OrderScreen({super.key,required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBAr(
        showBackArrow: true,
        title:  Text('My Orders',style: Theme.of(context).textTheme.headlineSmall ),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),


        /// Orders
         child:  COrderListItems(cartItems: cartItems,),
      ),
    );
  }
}
