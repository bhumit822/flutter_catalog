import 'package:flutter_catalog/models/widget_model.dart';
import 'package:flutter_catalog/widget_list/container.dart';
import 'package:flutter_catalog/widget_list/text.dart';

List<WidgetModel> widgets = [
  WidgetModel(
      name: "Container",
      implementation: ConatinerImplementation(),
      description: ConatinerImplementation(),
      codeString: ContainerCode()),
  WidgetModel(
      name: "Text",
      implementation: TextImplementation(),
      description: TextImplementation(),
      codeString: TextCode()),
];
