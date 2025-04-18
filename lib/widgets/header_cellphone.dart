import 'package:flutter/material.dart';
import 'package:portfolio_web/constrants/colors.dart';
import 'package:portfolio_web/styles/style.dart';
import 'package:portfolio_web/widgets/logo_web.dart';

class HeaderCellphone extends StatelessWidget {
  const HeaderCellphone({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.fromLTRB(40, 10, 20, 10),
      decoration: kHederDecoration,
      child: Row(
        children: [
          LogoWeb(
            onTap: onLogoTap
          ),
          Spacer(),
          IconButton(
            onPressed: onMenuTap, 
            icon: const Icon(
              Icons.menu,
              color: CustomColor.whitePrimary,
            )
          ),
          const SizedBox(width: 15.0,)
        ],
      ),
    );
  }
}