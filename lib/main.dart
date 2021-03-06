import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/show_widget.dart';
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/images/2bg.png")),
        // gradient: LinearGradient(
        //   colors: [
        //     // Color(0xff2a2a72),
        //     // Color(0xff009ffd),

        //     Colors.blueGrey,
        //     Colors.red
        //   ],
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   // stops: [0.0, -1.0],
        // ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white.withOpacity(0.3),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(
                      color: Colors.white.withOpacity(0.3), width: 2),
                  boxShadow: [
                    // BoxShadow(
                    //   // blurStyle: BlurStyle.inner,
                    //   blurRadius: 20,
                    //   // spreadRadius: -20
                    //   color: Colors.blueGrey.withOpacity(0.3),
                    //   // offset: Offset(5, 6),
                    // ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(18),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: AppBar(
                    shadowColor: Colors.white.withOpacity(0.02),

                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(20),
                    //         bottomRight: Radius.circular(20))),
                    backgroundColor: Colors.white.withOpacity(0.1),
                    elevation: 1,
                  ),
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(15),
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                clipBehavior: Clip.none,
                itemCount: widgets.length,
                itemBuilder: (context, idx) {
                  return ListTile(
                    idx: idx,
                  );
                }),
          ),
        ),
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
      hoverColor: Colors.transparent,
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
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blueAccent.withOpacity(0.2), width: 1.5),
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(5, 3),
                    spreadRadius: -10,
                    blurRadius: 30)
              ]),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text(
            widgets[idx].name,
            style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.white,
                fontFamily: "quicksands",
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
