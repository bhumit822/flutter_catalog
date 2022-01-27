import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/models/codeString.dart';

class WidgetModel {
  String name, subtitle;
  Widget implementation;

  CodeString codeString;
  WidgetModel(
      {required this.name,
      this.subtitle = "",
      required this.implementation,
      required this.codeString});
}
