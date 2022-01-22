import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/i.dart';
import 'package:flutter_catalog/widget_List.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            itemCount: widgets.length,
            itemBuilder: (context, idx) {
              return ListTile(
                idx: idx,
              );
            }),
      ),
    );
  }
}

class ListTile extends StatelessWidget {
  const ListTile({
    Key? key,
    required this.idx,
  }) : super(key: key);
  final int idx;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Impementation(
                      index: idx,
                    )));
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(8, 3),
                    spreadRadius: -20,
                    blurRadius: 30)
              ]),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text(
            widgets[idx].name,
            style: GoogleFonts.quicksand(),
          )),
    );
  }
}
