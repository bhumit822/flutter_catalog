import 'package:flutter_catalog/models/widget_model.dart';
import 'package:flutter_catalog/widget_list/alert_dialogbox.dart';
import 'package:flutter_catalog/widget_list/align.dart';
import 'package:flutter_catalog/widget_list/animated_align.dart';
import 'package:flutter_catalog/widget_list/appbar.dart';
import 'package:flutter_catalog/widget_list/bottomnavigationbar.dart';
import 'package:flutter_catalog/widget_list/bottomsheet.dart';
import 'package:flutter_catalog/widget_list/card.dart';
import 'package:flutter_catalog/widget_list/center.dart';
import 'package:flutter_catalog/widget_list/checkBox.dart';
import 'package:flutter_catalog/widget_list/chip.dart';
import 'package:flutter_catalog/widget_list/circularprogressindicator.dart';
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
  WidgetModel(
      name: "Card",
      implementation: CardImplementation(),
      description: CardImplementation(),
      codeString: CardCode()),
  WidgetModel(
      name: "Center",
      implementation: CenterImplementation(),
      description: CenterImplementation(),
      codeString: CenterCode()),
  WidgetModel(
      name: "CheckBox",
      implementation: CheckBoxImplementation(),
      description: CheckBoxImplementation(),
      codeString: CheckBoxCode()),
  WidgetModel(
      name: "BottomNavigationBar",
      implementation: BottomNavigaionBarImplementation(),
      description: BottomNavigaionBarImplementation(),
      codeString: BottomNavigationBarCode()),
  WidgetModel(
      name: "Chip",
      implementation: ChipImplementation(),
      description: ChipImplementation(),
      codeString: ChipCode()),
  WidgetModel(
      name: "CircularProgressIndicator",
      implementation: CircularProgressIndiactorImplementation(),
      description: CircularProgressIndiactorImplementation(),
      codeString: CircularProgressIndiactorCode()),
];




//aspectratio
// baseline
//backdropflter
// bottom navigation bar
