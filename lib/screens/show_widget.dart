import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/syntaxhighlighter.dart';
import 'package:flutter_catalog/screens/codeview.dart';
import 'package:flutter_catalog/widget_List.dart';

class Impementation extends StatefulWidget {
  const Impementation({Key? key, required this.index}) : super(key: key);

  @override
  _ImpementationState createState() => _ImpementationState();
  final int index;
}

class _ImpementationState extends State<Impementation> {
  @override
  Widget build(BuildContext context) {
    Widget _implement = widgets[widget.index].implementation;
    final _code = widgets[widget.index].codeString.codeString();

    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5, sigmaY: 5, tileMode: TileMode.mirror),
                child: AppBar(
                  actions: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) =>
                                    CodeView(index: widget.index)));
                      },
                      child: Center(
                          child: Row(
                        children: [
                          Icon(Icons.code),
                          Text(
                            "Code",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "quicksands",
                                fontWeight: FontWeight.w600),
                          ),
                          // Icon(Icons.code)
                        ],
                      )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                  shadowColor: Colors.white.withOpacity(0.1),
                  backgroundColor: Colors.white.withOpacity(0.2),
                  elevation: 1,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(15),
                      clipBehavior: Clip.hardEdge,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      child: _implement),
                ),
              ],
            ),
          ),
        ));
  }
}
