import 'package:flutter/material.dart';
import 'package:guncel_altin/screens/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Altın Döviz Fiyatları',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Exchange Market',
              style: TextStyle(
                color: Color(0xFF3A6187),
              ),
            ),
            centerTitle: true,
            leading: Icon(
              Icons.menu_open_sharp,
              color: Color(0xFF3A6187),
            ),
          ),
          body: MyHomePage()),
    );
  }
}
