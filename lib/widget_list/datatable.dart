import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  List<TableData> data = [
    TableData(name: "Abc", email: "Abc@mail", rollNo: 1),
    TableData(name: "Def", email: "Def@mail", rollNo: 2)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(),
          columns: [
            DataColumn(label: Text("Roll No.")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Email"))
          ],
          rows: data.map((e) {
            return DataRow(cells: [
              DataCell(Text(
                e.rollNo.toString(),
              )),
              DataCell(Text(e.name)),
              DataCell(Text(e.email))
            ]);
          }).toList(),
        ),
      )),
    );
  }
}

class TableData {
  String name, email;
  int rollNo;

  TableData({required this.name, required this.email, required this.rollNo});
}

class DataTableCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  List<TableData> data = [
    TableData(name: "Abc", email: "Abc@mail", rollNo: 1),
    TableData(name: "Def", email: "Def@mail", rollNo: 2)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(),
          columns: [
            DataColumn(label: Text("Roll No.")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Email"))
          ],
          rows: data.map((e) {
            return DataRow(cells: [
              DataCell(Text(
                e.rollNo.toString(),
     
              )),
              DataCell(Text(e.name)),
              DataCell(Text(e.email))
            ]);
          }).toList(),
        ),
      )),
    );
  }
}

class TableData {
  String name, email;
  int rollNo;

  TableData({required this.name, required this.email, required this.rollNo});
}""";
  }
}
