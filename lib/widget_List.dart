import 'package:flutter_catalog/models/widget_model.dart';
import 'package:flutter_catalog/widget_list/alert_dialogbox.dart';
import 'package:flutter_catalog/widget_list/align.dart';
import 'package:flutter_catalog/widget_list/animated_align.dart';
import 'package:flutter_catalog/widget_list/appbar.dart';
import 'package:flutter_catalog/widget_list/bottomsheet.dart';
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
  WidgetModel(
      name: "Alert dialogbox",
      implementation: AlertDialogBoxImplementation(),
      description: AlertDialogBoxImplementation(),
      codeString: AlertDialogBoxCode()),
  WidgetModel(
      name: "Align",
      implementation: AlignImplementation(),
      description: AlignImplementation(),
      codeString: AlignCode()),
  WidgetModel(
      name: "Animated Align",
      implementation: AnimatedAlignImplementation(),
      description: AnimatedAlignImplementation(),
      codeString: AnimatedAlignCode()),
  WidgetModel(
      name: "AppBar",
      implementation: AppBarImplementation(),
      description: AppBarImplementation(),
      codeString: AppBarCode()),
  WidgetModel(
      name: "BottomSheet",
      implementation: BottomSheetImplementation(),
      description: BottomSheetImplementation(),
      codeString: BottomSheetCode()),
];




//aspectratio
// baseline
// bottom navigation bar
