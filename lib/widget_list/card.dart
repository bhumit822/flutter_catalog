import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';
import 'package:google_fonts/google_fonts.dart';

class CardImplementation extends StatelessWidget {
  const CardImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Card(
          child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 150,
              width: 300,
              child: Text(
                "this is card widget in flutter,use widget in child.color,shadow color,elevation,shape can change.",
                style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )),
        ),
      ),
    );
  }
}

class CardCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardImplementation extends StatelessWidget {
  const CardImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Card(
          child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 150,
              width: 300,
              child: Text(
                "this is card widget in flutter,use widget in child.color,shadow color,elevation,shape can change.",
                style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )),
        ),
      ),
    );
  }
}
""";
  }
}
