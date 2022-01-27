import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoButtonImplementation extends StatefulWidget {
  const CupertinoButtonImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoButtonImplementationState createState() =>
      _CupertinoButtonImplementationState();
}

class _CupertinoButtonImplementationState
    extends State<CupertinoButtonImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CupertinoButton(
          color: Colors.blue,
          child: Text("CupertinoButton"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("pressed Cupertino Button"),
            ));
          }),
    ));
  }
}

class CupertinoButtonCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonImplementation extends StatefulWidget {
  const CupertinoButtonImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoButtonImplementationState createState() =>
      _CupertinoButtonImplementationState();
}

class _CupertinoButtonImplementationState
    extends State<CupertinoButtonImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CupertinoButton(
          color: Colors.blue,
          child: Text("CupertinoButton"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("pressed Cupertino Button"),
            ));
          }),
    ));
  }
}

""";
  }
}
