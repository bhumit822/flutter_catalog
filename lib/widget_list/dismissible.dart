import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({Key? key}) : super(key: key);

  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  List<Widget> items = [
    Container(
      color: Colors.blue,
      height: 70,
    ),
    Container(
      color: Colors.amber,
      height: 70,
    ),
    Container(
      color: Colors.blue,
      height: 70,
    ),
    Container(
      color: Colors.amber,
      height: 70,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (contex, index) {
            return Dismissible(
                background: Container(
                  color: Colors.redAccent,
                ),
                key: ValueKey<Widget>(items[index]),
                child: items[index]);
          }),
    );
  }
}

class DismissibleCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({Key? key}) : super(key: key);

  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  List<Widget> items = [
    Container(
      color: Colors.blue,
      height: 70,
    ),
    Container(
      color: Colors.amber,
      height: 70,
    ),
    Container(
      color: Colors.blue,
      height: 70,
    ),
    Container(
      color: Colors.amber,
      height: 70,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (contex, index) {
            return Dismissible(
                background: Container(
                  color: Colors.redAccent,
                ),
                key: ValueKey<Widget>(items[index]),
                child: items[index]);
          }),
    );
  }
}
""";
  }
}
