import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CheckBoxImplementation extends StatefulWidget {
  CheckBoxImplementation({Key? key}) : super(key: key);

  @override
  State<CheckBoxImplementation> createState() => _CheckBoxImplementationState();
}

class _CheckBoxImplementationState extends State<CheckBoxImplementation> {
  bool _checkboxval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
            value: _checkboxval,
            onChanged: (bool? value) {
              setState(() {
                _checkboxval = value!;
              });
            }),
      ),
    );
  }
}

class CheckBoxCode extends CodeString {
  @override
  String codeString() {
    return "CheckBox widget code.";
  }
}
