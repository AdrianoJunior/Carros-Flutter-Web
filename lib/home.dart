import 'package:carrosflutterweb/web/body.dart';
import 'package:carrosflutterweb/web/header.dart';
import 'package:carrosflutterweb/web/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'domain/app_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size get size => MediaQuery.of(context).size;

  bool get showMenu => size.width > 500;

  @override
  Widget build(BuildContext context) {
    print("HOME");
    return Scaffold(
      body: Column(
        children: <Widget>[
          _header(),
          _body(),
        ],
      ),
    );
  }

  _header() {
    return Container(
      padding: EdgeInsets.all(16),
      width: size.width,
      height: headerHeight,
      color: Colors.blue,
      child: Header(),
    );
  }

  _body() {
    return Container(
      width: size.width,
      height: size.height - headerHeight,
      child: showMenu
          ? Row(
        mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _menu(),
                _right(),
              ],
            )
          : _right(),
    );
  }

  _menu() {
    return Container(
      color: Colors.grey[100],
      width: menuWidth,
      child: Menu(),
    );
  }

  _right() {
    return Container(
      width: showMenu ? size.width - menuWidth : size.width,
      color: Colors.grey,
      child: Body(),
    );
  }
}
