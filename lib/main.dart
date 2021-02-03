import 'package:flutter/material.dart';
import 'package:studio_mar/routes.dart';
import 'package:studio_mar/screens/home/home.dart';
import 'package:studio_mar/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'studio-mar',
      theme: theme(),
      initialRoute: Home.routeName,
      routes: routes,
    );
  }
}
