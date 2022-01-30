import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoPageScaffoldPage extends StatelessWidget {
  const CupertinoPageScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.4),
      appBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Colors.blue,
        ),
        middle: Text("Hello"),
        trailing: Text(
          "Exit",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: CupertinoPageScaffold(
        child: Center(
          child: Text("Cupertino Page Scaffold"),
        ),
      ),
    );
  }
}

class CupertinoPageScaffoldCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldPage extends StatelessWidget {
  const CupertinoPageScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.4),
      appBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Colors.blue,
        ),
        middle: Text("Hello"),
        trailing: Text(
          "Exit",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: CupertinoPageScaffold(
        child: Center(
          child: Text("Cupertino Page Scaffold"),
        ),
      ),
    );
  }
}""";
  }
}
