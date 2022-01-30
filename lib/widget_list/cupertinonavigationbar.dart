import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoNavigationBarPage extends StatelessWidget {
  const CupertinoNavigationBarPage({Key? key}) : super(key: key);

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
    );
  }
}

class CupertinoNavigationBarCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarPage extends StatelessWidget {
  const CupertinoNavigationBarPage({Key? key}) : super(key: key);

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
    );
  }
}""";
  }
}
