import 'package:flutter/material.dart';
import 'package:qrcode_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: PlaneTicketListPage(),
    )
  }
}