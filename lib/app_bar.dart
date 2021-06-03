import 'package:flutter/material.dart';
import 'package:qrcode_app/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(title, style: appBarTextStyle,),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
