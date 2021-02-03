import 'package:flutter/material.dart';
import 'package:studio_mar/components/appbar.dart';
import 'package:studio_mar/components/navbar.dart';

import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class Story extends StatelessWidget {
  static String routeName = "/story";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppbar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.story),
    );
  }
}
