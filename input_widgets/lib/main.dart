import 'package:flutter/material.dart';
import 'package:text_field_widget/checkbox_slider_radio_switch.dart';
import 'package:text_field_widget/date_time_picker.dart';
import 'package:text_field_widget/gloabal_key_usage.dart';
import 'package:text_field_widget/stepper.dart';
import 'package:text_field_widget/text_field.dart';
import 'package:text_field_widget/text_form_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepperUsage(),
    );
  }
}


