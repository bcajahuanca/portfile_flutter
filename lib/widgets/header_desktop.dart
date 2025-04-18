import 'package:flutter/material.dart';
import 'package:portfolio_web/constrants/colors.dart';
import 'package:portfolio_web/constrants/nav_items.dart';
import 'package:portfolio_web/styles/style.dart';
import 'package:portfolio_web/widgets/logo_web.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap});
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      width: double.maxFinite,
      decoration: kHederDecoration,
      child: Row(
        children: [
          LogoWeb(
            onTap: onLogoTap
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {}, 
              child: Text(
                navTitles[i], 
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}