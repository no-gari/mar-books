import 'package:flutter/material.dart';
import 'package:studio_mar/components/appbar.dart';
import 'package:studio_mar/components/navbar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppbar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
