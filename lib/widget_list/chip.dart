import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ChipImplementation extends StatelessWidget {
  const ChipImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Chip(
              backgroundColor: Colors.blue,
              avatar: CircleAvatar(
                child: Text("1"),
              ),
              elevation: 5,
              label: Text("Chip1"))),
    );
  }
}

class ChipCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';


class ChipImplementation extends StatelessWidget {
  const ChipImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Chip(
              backgroundColor: Colors.blue,
              avatar: CircleAvatar(
                child: Text("1"),
              ),
              elevation: 5,
              label: Text("Chip1"))),
    );
  }
}""";
  }
}
