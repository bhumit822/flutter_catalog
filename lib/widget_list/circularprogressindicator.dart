import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CircularProgressIndiactorImplementation extends StatelessWidget {
  const CircularProgressIndiactorImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class CircularProgressIndiactorCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class CircularProgressIndiactorImplementation extends StatelessWidget {
  const CircularProgressIndiactorImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}""";
  }
}
