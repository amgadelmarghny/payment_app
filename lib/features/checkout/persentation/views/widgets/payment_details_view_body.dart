import 'package:flutter/material.dart';
import 'package:payment/features/checkout/persentation/views/widgets/payment_method_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PaymentMethodItemListView()],
    );
  }
}

