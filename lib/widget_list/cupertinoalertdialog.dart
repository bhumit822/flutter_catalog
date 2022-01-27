import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoAlertDialogImplementation extends StatefulWidget {
  const CupertinoAlertDialogImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoAlertDialogImplementationState createState() =>
      _CupertinoAlertDialogImplementationState();
}

class _CupertinoAlertDialogImplementationState
    extends State<CupertinoAlertDialogImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blueGrey,
          onPressed: () {
            showCupertinoDialog(
                context: context,
                builder: (contex) {
                  return CupertinoAlertDialog(
                    title: Text("Cupertino Alert Dialog"),
                    content:
                        Text("this is cupertino alert dialog box in flutter."),
                    actions: [Actionbutton()],
                  );
                });
          },
          child: Text("Show cupertino Alert Dialog"),
        ),
      ),
    );
  }
}

class Actionbutton extends StatelessWidget {
  const Actionbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Allow"));
  }
}

class CupertinoAlertDialogCode extends CodeString {
  @override
  String codeString() {
    return """ import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogImplementation extends StatefulWidget {
  const CupertinoAlertDialogImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoAlertDialogImplementationState createState() =>
      _CupertinoAlertDialogImplementationState();
}

class _CupertinoAlertDialogImplementationState
    extends State<CupertinoAlertDialogImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blueGrey,
          onPressed: () {
            showCupertinoDialog(
                context: context,
                builder: (contex) {
                  return CupertinoAlertDialog(
                    title: Text("Cupertino Alert Dialog"),
                    content:
                        Text("this is cupertino alert dialog box in flutter."),
                    actions: [Actionbutton()],
                  );
                });
          },
          child: Text("Show cupertino Alert Dialog"),
        ),
      ),
    );
  }
}

class Actionbutton extends StatelessWidget {
  const Actionbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Allow"));
  }
} """;
  }
}
