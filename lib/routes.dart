import 'package:flutter/material.dart';
import 'package:studio_mar/screens/clubs/clubs.dart';
import 'package:studio_mar/screens/home/home.dart';
import 'package:studio_mar/screens/story/story.dart';
import 'package:studio_mar/screens/service/service.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  Club.routeName: (context) => Club(),
  Service.routeName: (context) => Service(),
  Story.routeName: (context) => Story(),
};
