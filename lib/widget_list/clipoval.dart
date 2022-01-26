import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ClipOvalImplementation extends StatelessWidget {
  const ClipOvalImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            child: ClipOval(
              child: Image.asset("assets/images/i1.jpg"),
            ),
          ),
          SizedBox(height: 30),
          Text("ClipOval Widget clip child widget in oval shape")
        ],
      ),
    ));
  }
}

class ClipOvalCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class ClipOvalImplementation extends StatelessWidget {
  const ClipOvalImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            child: ClipOval(
              child: Image.asset("assets/images/i1.jpg"),
            ),
          ),
          SizedBox(height: 30),
          Text("ClipOval Widget clip child widget in oval shape")
        ],
      ),
    ));
  }
}""";
  }
}
