import 'package:flutter/material.dart';
import 'package:portfolio_web/constrants/colors.dart';
import 'package:portfolio_web/constrants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBackground,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, 
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for(int i = 0; i < navIcons.length; i++)
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
            titleTextStyle: TextStyle(
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.w600,
              fontSize: 16.0
            ),
            onTap: () {
              
            },
            leading: Icon(navIcons[i]),
            title: Text(navTitles[i]),
          )
        ],
      ),
    );
  }
}