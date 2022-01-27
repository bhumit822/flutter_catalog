import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoContextMenuImplementation extends StatefulWidget {
  const CupertinoContextMenuImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoContextMenuImplementatiionState createState() =>
      _CupertinoContextMenuImplementatiionState();
}

class _CupertinoContextMenuImplementatiionState
    extends State<CupertinoContextMenuImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                    child: Text("Action 1"),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("pressed action 1.")));
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: Text("Action 2"),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("pressed action 2.")));
                      Navigator.pop(context);
                    },
                  )
                ],
                child: Container(
                  width: 200,
                  child: Image.asset("assets/images/i1.jpg"),
                )),
            SizedBox(
              height: 20,
            ),
            Text("Long Press on Image.")
          ],
        ),
      ),
    );
  }
}

class CupertinoContextMenuCode extends CodeString {
  @override
  String codeString() {
    return """""";
  }
}
