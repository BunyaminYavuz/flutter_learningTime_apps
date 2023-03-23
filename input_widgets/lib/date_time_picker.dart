import 'dart:developer';

import 'package:flutter/material.dart';

class DateTimeExample extends StatefulWidget {
  const DateTimeExample({super.key});

  @override
  State<DateTimeExample> createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  DateTime current = DateTime.now();
  DateTime twoMonthAgo = DateTime(2023, DateTime.now().month - 3);
  DateTime oneMonthAfter = DateTime(2023, DateTime.now().month + 1);

  TimeOfDay currentTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade300),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: current,
                  firstDate: twoMonthAgo,
                  lastDate: oneMonthAfter,
                ).then(
                  (selectedDate) {
                    debugPrint(selectedDate?.toString());
                    debugPrint(selectedDate?.millisecondsSinceEpoch.toString());
                    debugPrint(selectedDate?.toUtc().toString());
                    debugPrint(selectedDate?.toUtc().toString());
                    debugPrint(
                        selectedDate?.add(Duration(days: 20)).toString());
                  },
                );
              },
              child: Text("Choose date"),
            ),
            ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: currentTime).then(
                  (selectedTime) {
                    debugPrint(selectedTime?.format(context));
                    debugPrint("${selectedTime?.hour}:${selectedTime!.minute}");
                  },
                );
              },
              child: Text("Choose time"),
            ),
          ],
        ),
      ),
    );
  }
}
