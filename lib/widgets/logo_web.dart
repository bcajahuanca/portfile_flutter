import 'package:flutter/material.dart';
import 'package:portfolio_web/constrants/colors.dart';

class LogoWeb extends StatelessWidget {
  const LogoWeb({super.key, this.onTap,});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "BC",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary
        ),
      ),
    );
  }
}