import 'package:flutter/material.dart';
import 'package:payment/features/checkout/persentation/views/widgets/custom_botum.dart';
import 'package:payment/features/checkout/persentation/views/widgets/custom_divider_widget.dart';
import 'package:payment/features/checkout/persentation/views/widgets/item_order_widget.dart';
import 'package:payment/features/checkout/persentation/views/widgets/total_price_widget.dart';

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
            title: 'Order Subtota',
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
          const CustomBottum(
            text: 'Complete Payment',
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
