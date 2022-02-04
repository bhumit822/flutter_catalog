import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class DecoratedBoxPage extends StatefulWidget {
  const DecoratedBoxPage({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxPage> createState() => _DecoratedBoxPageState();
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
                "Use container decoratio propertie insted of this decoratedBox."),
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 100,
                width: 100,
                child: Text("data"),
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DecoratedBoxCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatefulWidget {
  const DecoratedBoxPage({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxPage> createState() => _DecoratedBoxPageState();
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
                "Use container decoratio propertie insted of this decoratedBox."),
            DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 100,
                width: 100,
                child: Text("data"),
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
""";
  }
}
