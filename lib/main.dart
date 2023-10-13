import 'package:flutter/material.dart';
// import 'package:projectone/nav_bar.dart';
import 'package:projectone/defaults.dart';

// import 'package:projectone/pages/home_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.black,
      initialRoute: Defaults.homeRoute,
      routes: Defaults.routes,
    ));
