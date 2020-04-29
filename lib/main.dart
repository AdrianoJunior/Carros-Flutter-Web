import 'package:carrosflutterweb/domain/app_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        home: HomePage(),
      ),
    );
  }

  _theme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        body1: TextStyle(fontSize: 22),
      ),
      scaffoldBackgroundColor: Colors.white,
      hoverColor: Colors.blue[100],
      splashColor: Colors.blue,
    );
  }
}
