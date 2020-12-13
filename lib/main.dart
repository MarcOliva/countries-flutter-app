import 'package:countries_app/helpers/http_helper.dart';
import 'package:countries_app/models/country.dart';
import 'package:countries_app/ui/all_countries.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder()
          })),
      title: "Countries app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Countries of the world"),
            centerTitle: true,
          ),
          body: Home()


      ),
    );
  }
}
