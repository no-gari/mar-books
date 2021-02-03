import 'package:flutter/material.dart';
import 'package:studio_mar/components/appbar.dart';
import 'package:studio_mar/components/desktop_appbar.dart';
import 'package:studio_mar/components/desktop_navbar.dart';
import 'package:studio_mar/components/navbar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class Club extends StatelessWidget {
  static String routeName = "/club";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth > 800 ? DesktopAppbar() : CustomAppbar(),
        body: Body(),
        bottomNavigationBar: constraints.maxWidth > 800
            ? DesktopNavbar()
            : CustomBottomNavBar(selectedMenu: MenuState.clubs),
      );
    });
  }
}
