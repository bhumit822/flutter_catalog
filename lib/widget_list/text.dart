import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class TextImplementation extends StatelessWidget {
  const TextImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 15,
        child: Text(
          "This is sample text.",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class TextCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class TextImplementation extends StatelessWidget {
  const TextImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 15,
        child: Text(
          "This is sample text.",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
""";
  }
}
