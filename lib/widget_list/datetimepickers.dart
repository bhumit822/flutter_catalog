import 'package:flutter/material.dart';

class DateTimePickersPage extends StatefulWidget {
  const DateTimePickersPage({Key? key}) : super(key: key);

  @override
  _DateTimePickersPageState createState() => _DateTimePickersPageState();
}

class _DateTimePickersPageState extends State<DateTimePickersPage> {
  DateTime nt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String day = nt.day.toString();
    String month = nt.month.toString();
    String year = nt.year.toString();

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day + "/" + month + "/" + year),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              picker(context);
            },
            child: Text("Date & Time Pickers"),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }

  Future<void> picker(BuildContext context) async {
    final DateTime? ok = await showDatePicker(
        context: context,
        initialDate: nt,
        firstDate: DateTime(2000),
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        lastDate: DateTime(2025));

    setState(() {
      nt = ok!;
    });
  }
}
