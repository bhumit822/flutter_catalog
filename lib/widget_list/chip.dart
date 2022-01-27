import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ChipImplementation extends StatefulWidget {
  const ChipImplementation({Key? key}) : super(key: key);

  @override
  State<ChipImplementation> createState() => _ChipImplementationState();
}

class _ChipImplementationState extends State<ChipImplementation> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Chip(
              backgroundColor:
                  _isSelected ? Colors.blue : Colors.white.withOpacity(0.6),
              avatar: CircleAvatar(
                  backgroundColor: _isSelected ? Colors.white : Colors.blue,
                  child: _isSelected ? Icon(Icons.done) : Text("A")),
              elevation: 5,
              label: Text(
                "tap on Chip",
                style:
                    TextStyle(color: _isSelected ? Colors.white : Colors.blue),
              )),
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
        ),
      ),
    );
  }
}

class ChipCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class ChipImplementation extends StatefulWidget {
  const ChipImplementation({Key? key}) : super(key: key);

  @override
  State<ChipImplementation> createState() => _ChipImplementationState();
}

class _ChipImplementationState extends State<ChipImplementation> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Chip(
              backgroundColor:
                  _isSelected ? Colors.blue : Colors.white.withOpacity(0.6),
              avatar: CircleAvatar(
                  backgroundColor: _isSelected ? Colors.white : Colors.blue,
                  child: _isSelected ? Icon(Icons.done) : Text("A")),
              elevation: 5,
              label: Text(
                "tap on Chip",
                style:
                    TextStyle(color: _isSelected ? Colors.white : Colors.blue),
              )),
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
        ),
      ),
    );
  }
}""";
  }
}
