import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class AppBarImplementation extends StatelessWidget {
  const AppBarImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        title: Text(" flutter AppBar "),
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.question_answer),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}

class AppBarCode extends CodeString {
  @override
  String codeString() {
    return "AppBar code";
  }
}
