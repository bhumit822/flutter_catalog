import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({Key? key}) : super(key: key);

  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Widget a = Container(
    alignment: Alignment.center,
    child: Text(
      "Drag here.",
    ),
    color: Colors.red,
    height: 70,
    width: 70,
  );
  Widget b = Container(
    alignment: Alignment.center,
    child: Material(child: Text("Yes")),
    color: Colors.amber,
    height: 70,
    width: 70,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Draggable(
                  data: b,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Drag this box"),
                    color: Colors.amber,
                    height: 70,
                    width: 70,
                  ),
                  feedback: b),
              SizedBox(
                height: 300,
              ),
              Expanded(
                child: DragTarget(
                  builder: (context, ace, rej) {
                    return a;
                  },
                  onAccept: (data) {
                    setState(() {
                      a = b;
                    });
                  },
                ),
              )
            ],
          )),
    );
  }
}

class DraggableCode extends CodeString {
  @override
  String codeString() {
    return "";
  }
}
