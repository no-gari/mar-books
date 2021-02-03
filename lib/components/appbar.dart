import 'package:flutter/material.dart';
import 'package:studio_mar/size_config.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo_solid.png',
        fit: BoxFit.contain,
        height: getProportionateScreenHeight(25),
      ),
      elevation: 1,
    );
  }
}
