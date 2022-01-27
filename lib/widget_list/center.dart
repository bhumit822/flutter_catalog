import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CenterImplementation extends StatelessWidget {
  const CenterImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        color: Colors.blueAccent,
        child: Text(
            "center widgert show child widget in center of their parent widget."),
      )),
    );
  }
}

class CenterCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class CenterImplementation extends StatelessWidget {
  const CenterImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        color: Colors.blueAccent,
        child: Text(
            "center widgert show child widget in center of their parent widget."),
      )),
    );
  }
}""";
  }
}
