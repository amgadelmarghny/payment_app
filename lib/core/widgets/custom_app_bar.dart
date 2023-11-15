import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/style.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/image/arrow.svg',
      ),
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
