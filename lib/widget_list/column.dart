import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class ColumnImplementation extends StatefulWidget {
  const ColumnImplementation({Key? key}) : super(key: key);

  @override
  _ColumnImplementationState createState() => _ColumnImplementationState();
}

class _ColumnImplementationState extends State<ColumnImplementation> {
  CrossAxisAlignment _crossaxisvalue = CrossAxisAlignment.center;
  List<CrossAxisAlignment> _crossAxisAlignment = [
    CrossAxisAlignment.baseline,
    CrossAxisAlignment.center,
    CrossAxisAlignment.end,
    CrossAxisAlignment.start,
    CrossAxisAlignment.stretch
  ];
  MainAxisAlignment _mainaxisvalue = MainAxisAlignment.start;
  List<MainAxisAlignment> _mainAxisAlignment = [
    MainAxisAlignment.center,
    MainAxisAlignment.end,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
    MainAxisAlignment.start
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: DropdownButton(
                  isExpanded: true,
                  value: _crossaxisvalue,
                  items: _crossAxisAlignment.map((CrossAxisAlignment e) {
                    return DropdownMenuItem(
                        value: e, child: Center(child: Text(e.toString())));
                  }).toList(),
                  onChanged: (CrossAxisAlignment? value) {
                    setState(() {
                      _crossaxisvalue = value!;
                    });
                  }),
            ),
            Container(
              child: DropdownButton(
                  isExpanded: true,
                  value: _mainaxisvalue,
                  items: _mainAxisAlignment.map((e) {
                    return DropdownMenuItem(
                        value: e, child: Center(child: Text(e.toString())));
                  }).toList(),
                  onChanged: (MainAxisAlignment? value) {
                    setState(() {
                      _mainaxisvalue = value!;
                    });
                  }),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: double.infinity,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                mainAxisAlignment: _mainaxisvalue,
                crossAxisAlignment: _crossaxisvalue,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.red,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.green,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ColumnCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class ColumnImplementation extends StatefulWidget {
  const ColumnImplementation({Key? key}) : super(key: key);

  @override
  _ColumnImplementationState createState() => _ColumnImplementationState();
}

class _ColumnImplementationState extends State<ColumnImplementation> {
  CrossAxisAlignment _crossaxisvalue = CrossAxisAlignment.center;
  List<CrossAxisAlignment> _crossAxisAlignment = [
    CrossAxisAlignment.baseline,
    CrossAxisAlignment.center,
    CrossAxisAlignment.end,
    CrossAxisAlignment.start,
    CrossAxisAlignment.stretch
  ];
  MainAxisAlignment _mainaxisvalue = MainAxisAlignment.start;
  List<MainAxisAlignment> _mainAxisAlignment = [
    MainAxisAlignment.center,
    MainAxisAlignment.end,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
    MainAxisAlignment.start
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: DropdownButton(
                  isExpanded: true,
                  value: _crossaxisvalue,
                  items: _crossAxisAlignment.map((CrossAxisAlignment e) {
                    return DropdownMenuItem(
                        value: e, child: Center(child: Text(e.toString())));
                  }).toList(),
                  onChanged: (CrossAxisAlignment? value) {
                    setState(() {
                      _crossaxisvalue = value!;
                    });
                  }),
            ),
            Container(
              child: DropdownButton(
                  isExpanded: true,
                  value: _mainaxisvalue,
                  items: _mainAxisAlignment.map((e) {
                    return DropdownMenuItem(
                        value: e, child: Center(child: Text(e.toString())));
                  }).toList(),
                  onChanged: (MainAxisAlignment? value) {
                    setState(() {
                      _mainaxisvalue = value!;
                    });
                  }),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: double.infinity,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                mainAxisAlignment: _mainaxisvalue,
                crossAxisAlignment: _crossaxisvalue,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.red,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.green,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}""";
  }
}
