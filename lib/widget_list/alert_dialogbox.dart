import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertDialogBoxImplementation extends StatelessWidget {
  const AlertDialogBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(20),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    ActionButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "Ok",
                    ),
                    ActionButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "Cancel",
                    ),
                  ],
                  titleTextStyle: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 22),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  content: Text("Ths is simple Aleat Dialog Box in Flutter"),
                  title: Text("Alert Dialog Box"),
                );
              });
        },
        color: Colors.green,
        child: Text("Open Alert Dialog",
            style: GoogleFonts.quicksand(fontWeight: FontWeight.w500)),
      ),
    ));
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onTap, child: Text(text));
  }
}

class AlertDialogBoxCode extends CodeString {
  @override
  String codeString() {
    return "Alert Dialog Box";
  }
}
