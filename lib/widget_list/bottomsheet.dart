import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetImplementation extends StatefulWidget {
  const BottomSheetImplementation({Key? key}) : super(key: key);

  @override
  _BottomSheetImplementationState createState() =>
      _BottomSheetImplementationState();
}

class _BottomSheetImplementationState extends State<BottomSheetImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        ),
                    height: 350,
                    width: double.infinity,
                    child: Column(
                      children: [
                        NewWidget(
                          text: 'text 1',
                          color: Colors.amberAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        NewWidget(
                          text: 'text 2',
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        NewWidget(
                          text: 'text 3',
                          color: Colors.lightGreenAccent,
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text(
            "BottomSheet",
            style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
          ),
          color: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Text(text),
    );
  }
}

class BottomSheetCode extends CodeString {
  @override
  String codeString() {
    return " BottomSheet code";
  }
}
