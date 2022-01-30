import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoSliderPage extends StatefulWidget {
  const CupertinoSliderPage({Key? key}) : super(key: key);

  @override
  _CupertinoSliderPageState createState() => _CupertinoSliderPageState();
}

class _CupertinoSliderPageState extends State<CupertinoSliderPage> {
  var sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("HELLO Flutter"),
      ),
      body: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(sliderValue.toStringAsPrecision(4).toString()),
              CupertinoSlider(
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                value: sliderValue,
                min: 0.0,
                max: 1,
                divisions: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoSliderCode extends CodeString {
  @override
  String codeString() {
    return "";
  }
}
