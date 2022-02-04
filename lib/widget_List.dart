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
import 'package:flutter_catalog/widget_list/clipoval.dart';
import 'package:flutter_catalog/widget_list/cliprect.dart';
import 'package:flutter_catalog/widget_list/column.dart';
import 'package:flutter_catalog/widget_list/constrainedbox.dart';
import 'package:flutter_catalog/widget_list/container.dart';
import 'package:flutter_catalog/widget_list/cupertinoactionsheet.dart';
import 'package:flutter_catalog/widget_list/cupertinoactivityindicator.dart';
import 'package:flutter_catalog/widget_list/cupertinoalertdialog.dart';
import 'package:flutter_catalog/widget_list/cupertinobutton.dart';
import 'package:flutter_catalog/widget_list/cupertinocontextmenu.dart';
import 'package:flutter_catalog/widget_list/cupertinodatepicker.dart';
import 'package:flutter_catalog/widget_list/cupertinonavigationbar.dart';
import 'package:flutter_catalog/widget_list/cupertinopagescaffold.dart';
import 'package:flutter_catalog/widget_list/cupertinoslider.dart';
import 'package:flutter_catalog/widget_list/datatable.dart';
import 'package:flutter_catalog/widget_list/datetimepickers.dart';
import 'package:flutter_catalog/widget_list/decoratedbox.dart';
import 'package:flutter_catalog/widget_list/decoratedboxtransition.dart';
import 'package:flutter_catalog/widget_list/dismissible.dart';
import 'package:flutter_catalog/widget_list/divider.dart';
import 'package:flutter_catalog/widget_list/draggable.dart';
import 'package:flutter_catalog/widget_list/text.dart';

List<WidgetModel> widgets = [
  WidgetModel(
      name: "Container",
      implementation: ConatinerImplementation(),
      codeString: ContainerCode()),
  WidgetModel(
      name: "Text",
      implementation: TextImplementation(),
      codeString: TextCode()),
  WidgetModel(
      name: "Alert dialogbox",
      implementation: AlertDialogBoxImplementation(),
      codeString: AlertDialogBoxCode()),
  WidgetModel(
      name: "Align",
      implementation: AlignImplementation(),
      codeString: AlignCode()),
  WidgetModel(
      name: "Animated Align",
      implementation: AnimatedAlignImplementation(),
      codeString: AnimatedAlignCode()),
  WidgetModel(
      name: "AppBar",
      implementation: AppBarImplementation(),
      codeString: AppBarCode()),
  WidgetModel(
      name: "BottomSheet",
      implementation: BottomSheetImplementation(),
      codeString: BottomSheetCode()),
  WidgetModel(
      name: "Card",
      implementation: CardImplementation(),
      codeString: CardCode()),
  WidgetModel(
      name: "Center",
      implementation: CenterImplementation(),
      codeString: CenterCode()),
  WidgetModel(
      name: "CheckBox",
      implementation: CheckBoxImplementation(),
      codeString: CheckBoxCode()),
  WidgetModel(
      name: "BottomNavigationBar",
      implementation: BottomNavigaionBarImplementation(),
      codeString: BottomNavigationBarCode()),
  WidgetModel(
      name: "Chip",
      implementation: ChipImplementation(),
      codeString: ChipCode()),
  WidgetModel(
      name: "CircularProgressIndicator",
      implementation: CircularProgressIndiactorImplementation(),
      codeString: CircularProgressIndiactorCode()),
  WidgetModel(
      name: "ClipOval",
      implementation: ClipOvalImplementation(),
      codeString: ClipOvalCode()),
  WidgetModel(
      name: "ClipRect",
      implementation: ClipRectImplementation(),
      codeString: ClipRectCode()),
  WidgetModel(
      name: "Column",
      implementation: ColumnImplementation(),
      codeString: ColumnCode()),
  WidgetModel(
      name: "ConstrainedBox baki 6",
      implementation: ConstrainedBoxImplementation(),
      codeString: ConstrainedBoxCode()),
  WidgetModel(
      name: "CupertinoActionSheet",
      implementation: CupertinoActionSheetImplementation(),
      codeString: CupertinoActionSheetCode()),
  WidgetModel(
      name: "CupertinoActivityIndicator",
      implementation: CupertinoActivityIndicatorImplementation(),
      codeString: CupertinoActivityIndicatorCode()),
  WidgetModel(
      name: "CupertinoAlertDialog",
      implementation: CupertinoAlertDialogImplementation(),
      codeString: CupertinoAlertDialogCode()),
  WidgetModel(
      name: "CupertinoActivityIndicator",
      implementation: CupertinoButtonImplementation(),
      codeString: CupertinoButtonCode()),
  WidgetModel(
      name: "CupertinoContextMenu",
      implementation: CupertinoContextMenuImplementation(),
      codeString: CupertinoContextMenuCode()),
  WidgetModel(
      name: "CupertinoDatePicker",
      implementation: CupertinoDatePickerImplementation(),
      codeString: CupertinoDatePickerCode()),
  WidgetModel(
      name: "CupertinoNavigationBar",
      implementation: CupertinoNavigationBarPage(),
      codeString: CupertinoNavigationBarCode()),
  WidgetModel(
      name: "CupertinoPageScaffold",
      implementation: CupertinoPageScaffoldPage(),
      codeString: CupertinoPageScaffoldCode()),
  WidgetModel(
      name: "CupertinoSlider",
      implementation: CupertinoSliderPage(),
      codeString: CupertinoSliderCode()),
  WidgetModel(
      name: "DataTable",
      implementation: DataTablePage(),
      codeString: DataTableCode()),
  WidgetModel(
      name: "Date & Time Pickers",
      implementation: DateTimePickersPage(),
      codeString: DataTableCode()),
  WidgetModel(
      name: "DecoratedBox",
      implementation: DecoratedBoxPage(),
      codeString: DecoratedBoxCode()),
  WidgetModel(
      name: "DecoratedBoxTransition",
      implementation: DecoratedBoxTransitionPage(),
      codeString: DecoratedBoxTransitionCode()),
  WidgetModel(
      name: "Dismissible",
      implementation: DismissiblePage(),
      codeString: DismissibleCode()),
  WidgetModel(
      name: "Divider",
      implementation: DividerPage(),
      codeString: DividerCode()),
  WidgetModel(
      name: "Draggable",
      implementation: DraggablePage(),
      codeString: DraggableCode()),
];




//aspectratio
// baseline
//backdropflter
// clippath
// CustomMultiChildLayout
// CustomPaint
// CustomScrollView
// CustomSingleChildLayout


