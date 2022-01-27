import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoActivityIndicatorImplementation extends StatefulWidget {
  const CupertinoActivityIndicatorImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoActivityIndicatorImplementationState createState() =>
      _CupertinoActivityIndicatorImplementationState();
}

class _CupertinoActivityIndicatorImplementationState
    extends State<CupertinoActivityIndicatorImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}

class CupertinoActivityIndicatorCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorImplementation extends StatefulWidget {
  const CupertinoActivityIndicatorImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoActivityIndicatorImplementationState createState() =>
      _CupertinoActivityIndicatorImplementationState();
}

class _CupertinoActivityIndicatorImplementationState
    extends State<CupertinoActivityIndicatorImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
""";
  }
}
