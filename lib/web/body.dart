import 'package:carrosflutterweb/domain/app_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print("BODY");
    AppModel app = Provider.of<AppModel>(context, listen: true);

    return app.page;
  }
}
