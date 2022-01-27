import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ConstrainedBoxImplementation extends StatefulWidget {
  ConstrainedBoxImplementation({Key? key}) : super(key: key);

  @override
  State<ConstrainedBoxImplementation> createState() =>
      _ConstrainedBoxImplementationState();
}

class _ConstrainedBoxImplementationState
    extends State<ConstrainedBoxImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          color: Colors.amber,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400, minWidth: 100),
            child: Text(""),
          ),
        ),
      ),
    );
  }
}

class ConstrainedBoxCode extends CodeString {
  @override
  String codeString() {
    return "ContrainedBox";
  }
}
