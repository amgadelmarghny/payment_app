import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/style.dart';
import 'package:payment/features/checkout/persentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/image/arrow.svg',
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
