import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoActionSheetImplementation extends StatefulWidget {
  const CupertinoActionSheetImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoActionSheetImplementationState createState() =>
      _CupertinoActionSheetImplementationState();
}

class _CupertinoActionSheetImplementationState
    extends State<CupertinoActionSheetImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blueGrey,
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoActionSheet(
                    actions: [
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                    ],
                    title: Text("CupertinoActionSheet"),
                    cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel")),
                  );
                });
          },
          child: Text("Open Cupertino ActionSheet"),
        ),
      ),
    );
  }
}

class CupertinoActionSheetCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetImplementation extends StatefulWidget {
  const CupertinoActionSheetImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoActionSheetImplementationState createState() =>
      _CupertinoActionSheetImplementationState();
}

class _CupertinoActionSheetImplementationState
    extends State<CupertinoActionSheetImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blueGrey,
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoActionSheet(
                    actions: [
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                      CupertinoActionSheetAction(
                          onPressed: () {}, child: Text("data")),
                    ],
                    title: Text("CupertinoActionSheet"),
                    cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel")),
                  );
                });
          },
          child: Text("Open Cupertino ActionSheet"),
        ),
      ),
    );
  }
}""";
  }
}
