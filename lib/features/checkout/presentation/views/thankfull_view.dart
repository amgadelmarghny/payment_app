import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/features/checkout/presentation/views/widgets/thankfull_view_body.dart';

class ThankfullView extends StatelessWidget {
  const ThankfullView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ThankfullViewBody(),
    );
  }
}
