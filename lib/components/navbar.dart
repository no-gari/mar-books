import 'package:flutter/material.dart';
import 'package:studio_mar/screens/clubs/clubs.dart';
import 'package:studio_mar/screens/home/home.dart';
import 'package:studio_mar/screens/service/service.dart';
import 'package:studio_mar/screens/story/story.dart';
import 'package:studio_mar/size_config.dart';
import '../constants.dart';
import '../enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key key, @required this.selectedMenu})
      : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonWidget(
                changedColor: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : Colors.grey[400],
                routeName: Home.routeName,
                imageSource: "assets/icons/home.svg",
              ),
              IconButtonWidget(
                changedColor: MenuState.service == selectedMenu
                    ? kPrimaryColor
                    : Colors.grey[400],
                routeName: Service.routeName,
                imageSource: "assets/icons/service.svg",
              ),
              IconButtonWidget(
                changedColor: MenuState.story == selectedMenu
                    ? kPrimaryColor
                    : Colors.grey[400],
                routeName: Story.routeName,
                imageSource: "assets/icons/story.svg",
              ),
              IconButtonWidget(
                changedColor: MenuState.clubs == selectedMenu
                    ? kPrimaryColor
                    : Colors.grey[400],
                routeName: Club.routeName,
                imageSource: "assets/icons/group.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {Key key,
      @required this.imageSource,
      @required this.changedColor,
      @required this.routeName})
      : super(key: key);

  final Color changedColor;
  final String imageSource;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: getProportionateScreenHeight(20),
      icon: SvgPicture.asset(
        '$imageSource',
        color: changedColor,
        width: double.infinity,
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
