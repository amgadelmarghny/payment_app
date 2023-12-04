import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/core/widgets/custom_divider_widget.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';

import 'item_order_widget.dart';
import 'total_price_widget.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [

          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Image.asset(
              'assets/image/group6.jpg',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ItemDetails(
            title: 'Order Subtotal',
            price: '42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const ItemDetails(
            title: 'Discount',
            price: '0',
          ),
          const SizedBox(
            height: 3,
          ),
          const ItemDetails(
            title: 'Shipping',
            price: '8',
          ),
          const SizedBox(
            height: 17,
          ),
          const CustomDivider(),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(
            title: 'Total',
            price: '50.97',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomBottum(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailsView();
              // }));
              showBottomSheet(
                  backgroundColor: Colors.grey.shade300,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return const PaymentMethodButtomSheet();
                  });
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodButtomSheet extends StatelessWidget {
  const PaymentMethodButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodItemListView(),
          SizedBox(
            height: 20,
          ),
          CustomBottum(text: 'Continue'),
        ],
      ),
    );
  }
}
