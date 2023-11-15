import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class CustomBottum extends StatelessWidget {
  const CustomBottum({
    super.key,
    required this.text, this.onTap,
  });
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 23),
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: Styles.style20,
        ),
      ),
    );
  }
}
