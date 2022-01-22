import 'package:flutter/material.dart';
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

    return _implement;
  }
}
