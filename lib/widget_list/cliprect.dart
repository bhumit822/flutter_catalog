import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ClipRectImplementation extends StatelessWidget {
  const ClipRectImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: ClipRect(
                child: Image.asset("assets/images/i1.jpg"),
              ),
            ),
            SizedBox(height: 30),
            Text("ClipOval Widget clip child widget in rectangle shape")
          ],
        ),
      ),
    );
  }
}

class ClipRectCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class ClipRectImplementation extends StatelessWidget {
  const ClipRectImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: ClipRect(
                child: Image.asset("assets/images/i1.jpg"),
              ),
            ),
            SizedBox(height: 30),
            Text("ClipOval Widget clip child widget in rectangle shape")
          ],
        ),
      ),
    );
  }
}""";
  }
}
