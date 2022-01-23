import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class AlignImplementation extends StatefulWidget {
  const AlignImplementation({Key? key}) : super(key: key);

  @override
  State<AlignImplementation> createState() => _AlignImplementationState();
}

class _AlignImplementationState extends State<AlignImplementation> {
  List<AlignmentGeometry> _alignment = [
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
  ];

  // List _values = _alignment.map((e) => e.value).toList();
  AlignmentGeometry _value = Alignment.bottomCenter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton(
              value: _value,
              items: _alignment.map((AlignmentGeometry e) {
                return DropdownMenuItem(
                  value: e,
                  child:
                      Text(e.toString().split(".").toList()[1].toUpperCase()),
                );
              }).toList(),
              onChanged: (AlignmentGeometry? value) {
                setState(() {
                  _value = value!;
                });
              }),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: _value,
                child: Container(
                  color: Colors.amber,
                  height: 70,
                  width: 70,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AlignCode extends CodeString {
  @override
  String codeString() {
    return "Align code";
  }
}
