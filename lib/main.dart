// ignore_for_file: prefer_const_constructors

import 'package:find_house_app/pages/splash.dart';
import 'package:find_house_app/providers/recommended_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecommendedProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Splash(),
    // );
  }
}
