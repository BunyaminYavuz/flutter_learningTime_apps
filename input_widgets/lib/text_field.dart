import 'package:flutter/material.dart';

class TextFieldUsage extends StatefulWidget {
  final String title;
  const TextFieldUsage({super.key, required this.title});

  @override
  State<TextFieldUsage> createState() => _TextFieldUsageState();
}

class _TextFieldUsageState extends State<TextFieldUsage> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "Example@gmail.com");
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailController,
              focusNode: _focusNode,
              autofocus: true,
              textInputAction: TextInputAction.done,
              maxLength: 50,
              maxLines: maxLineCount,
              keyboardType: TextInputType.text,
              onChanged: (String value) {
                if (value.length > 5) {
                  setState(() {
                    _emailController.value = TextEditingValue(
                      text: value,
                      selection: TextSelection.collapsed(offset: value.length),
                    );
                  });
                }
              },
              onSubmitted: (value) {
                print("Submitted" + " $value");
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter user name",
                prefixIcon: Icon(Icons.email),
                //suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text(_emailController.text),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              maxLength: 50,
              maxLines: 1,
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                if (value.length > 5) {
                  print(value);
                }
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter password",
                prefixIcon: Icon(Icons.password),
                suffix: Icon(Icons.login),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {
            setState(() {
              _emailController.text = "1b.yavuz07@gmail.com";
            });
          }),
    );
  }
}