import 'package:carrosflutterweb/web/web_utils.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        return LayoutBuilder(
          builder: (context, constraints) {
            double fontSize = size(constraints.maxWidth * 0.07,
                min: 8, max: Theme.of(context).textTheme.body1.fontSize);
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 250),
                    child: Container(
                      color: Colors.blue[50],
                      child: Image.network(
                        "http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png",
                      ),
                    ),
                  ),
                  Text(
                    "Renault Megane RS Trophy",
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
