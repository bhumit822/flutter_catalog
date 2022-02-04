import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.redAccent,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.amber,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.redAccent,
            height: 60,
          ),
        ],
      ),
    );
  }
}

class DividerCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.redAccent,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.amber,
            height: 60,
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Container(
            color: Colors.redAccent,
            height: 60,
          ),
        ],
      ),
    );
  }
}""";
  }
}
