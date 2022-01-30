import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoDatePickerImplementation extends StatefulWidget {
  const CupertinoDatePickerImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoDatePickerImplementationState createState() =>
      _CupertinoDatePickerImplementationState();
}

class _CupertinoDatePickerImplementationState
    extends State<CupertinoDatePickerImplementation> {
  DateTime _datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "${_datetime.day}/${_datetime.month}/${_datetime.year}",
              style: TextStyle(fontFamily: "quicksands", fontSize: 25),
            ),
            // Text(
            //   "${_datetime.hour}:${_datetime.minute}:${_datetime.second}",
            //   style: TextStyle(fontFamily: "quicksands", fontSize: 25),
            // ),
            Spacer(),
            MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        height: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.white,
                              height: 200,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                initialDateTime: DateTime.now(),
                                onDateTimeChanged: (time) {
                                  setState(() {
                                    _datetime = time;
                                  });
                                },
                              ),
                            ),
                            CupertinoButton(
                              // color: Colors.blueAccent,
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text("Choose Date"),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}

class CupertinoDatePickerCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class CupertinoDatePickerImplementation extends StatefulWidget {
  const CupertinoDatePickerImplementation({Key? key}) : super(key: key);

  @override
  _CupertinoDatePickerImplementationState createState() =>
      _CupertinoDatePickerImplementationState();
}

class _CupertinoDatePickerImplementationState
    extends State<CupertinoDatePickerImplementation> {
  DateTime _datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            // replace @ with \$ dollarsign
            Text(
              "@{_datetime!.day}/@{_datetime.month}/@{_datetime.year}",
              style: TextStyle(fontFamily: "quicksands", fontSize: 25),
            ),
            Text(
              "@{_datetime.hour}:@{_datetime.minute}",
              style: TextStyle(fontFamily: "quicksands", fontSize: 25),
            ),
            Spacer(),
            MaterialButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        color: Colors.white,
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.white,
                              height: 200,
                              child: CupertinoDatePicker(
                                initialDateTime: DateTime.now(),
                                onDateTimeChanged: (time) {
                                  setState(() {
                                    _datetime = time;
                                  });
                                },
                              ),
                            ),
                            CupertinoButton(
                              color: Colors.blueAccent,
                              child: const Text('OK'),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text("Choose Date"),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
""";
  }
}
