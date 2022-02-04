import 'package:flutter/material.dart';

class DateTimePickersPage extends StatefulWidget {
  const DateTimePickersPage({Key? key}) : super(key: key);

  @override
  _DateTimePickersPageState createState() => _DateTimePickersPageState();
}

class _DateTimePickersPageState extends State<DateTimePickersPage> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    String day = _date.day.toString();
    String month = _date.month.toString();
    String year = _date.year.toString();
    String hr = _time.hour.toString();
    String mn = _time.minute.toString();
    // String sc = _time.second.toString();

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
              _datepicker(context);
            },
            child: Text("Time Pickers"),
            color: Colors.blue,
          ),
          SizedBox(
            height: 50,
          ),
          Text(hr + ":" + mn),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              _timepicker(context);
            },
            child: Text("Time Pickers"),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }

  Future<void> _timepicker(BuildContext contex) async {
    final TimeOfDay? ptime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      _time = ptime!;
    });
  }

  Future<void> _datepicker(BuildContext context) async {
    final DateTime? ok = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        lastDate: DateTime(2025));

    setState(() {
      _date = ok!;
    });
  }
}
