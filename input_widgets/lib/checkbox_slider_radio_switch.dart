import 'package:flutter/material.dart';

class OtherFormElements extends StatefulWidget {
  const OtherFormElements({super.key});

  @override
  State<OtherFormElements> createState() => _OtherFormElementsState();
}

class _OtherFormElementsState extends State<OtherFormElements> {
  bool checkBoxState = false;
  String city = "";
  bool switchState = false;
  double sliderValue = 0.0;
  String selectedColor = "Red";
  List<String> pLanguages = ["Dart", "Python", "C", "C++","JavaScript", "C#", "Swift", "Java"];
  String selectedLanguage = "Dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Form Elements"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            //                CheckboxListTile
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (selected) {
                setState(() {
                  checkBoxState = selected!;
                });
              },
              activeColor: Colors.grey,
              title: Text("Checkbox title"),
              subtitle: Text("Checkbox subtitle"),
              secondary: Icon(Icons.add),
              selected: false,
            ),
            //                RadioListTile
            RadioListTile(
              value: "Value 1",
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: Text("Radio title of Value 1"),
              subtitle: Text("Radio subtitle of Value 1"),
              activeColor: Colors.yellow,
              secondary: Icon(Icons.play_lesson_outlined),
            ),
            RadioListTile(
              value: "Value 2",
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: Text("Radio title of Value 2"),
              subtitle: Text("Radio subtitle of Value 2"),
              activeColor: Colors.orange,
              secondary: Icon(Icons.play_lesson_outlined),
            ),
            RadioListTile(
              value: "Value 3",
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: Text("Radio title of Value 3"),
              subtitle: Text("Radio subtitle of Value 3"),
              activeColor: Colors.blue,
              secondary: Icon(Icons.play_lesson_outlined),
            ),
            //                SwitchListTile
            SwitchListTile(
              value: switchState,
              onChanged: (value) {
                setState(
                  () {
                    switchState = value;
                  },
                );
              },
              title: Text("Switch title"),
              subtitle: Text("Switch subtitle"),
              secondary: Icon(Icons.refresh),
            ),
            //                Slider
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(
                  () {
                    sliderValue = value;
                  },
                );
              },
              min: 0,
              max: 100,
              divisions: 10,
              activeColor: Colors.teal.shade300,
              label: sliderValue.toString(),
            ),
            //                DropdownButton Usage 1
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          color: Colors.red,
                          margin: EdgeInsets.only(right: 10)),
                      Text("Red"),
                    ],
                  ),
                  value: "Red",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          color: Colors.blue,
                          margin: EdgeInsets.only(right: 10)),
                      Text("Blue"),
                    ],
                  ),
                  value: "Blue",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 10)),
                      Text("Green"),
                    ],
                  ),
                  value: "Green",
                ),
              ],
              onChanged: (String? selected) {
                setState(() {
                  selectedColor = selected!;
                });
              },
              hint: Text("Select a color..."),
              value: selectedColor,
            ),
            //                DropdownButton Usage 2
            DropdownButton(
              items: pLanguages.map((currentItem) {
                return DropdownMenuItem<String>(
                  child: Text(currentItem, style: Theme.of(context).textTheme.headline5),
                  value: currentItem,
                );
              }).toList(),
              onChanged: (pl) {
                setState(() {
                  selectedLanguage = pl!;
                });
              },
              hint: Text("Select your fav programing language : "),
              value: selectedLanguage,
            ),
          ],
        ),
      ),
    );
  }
}
