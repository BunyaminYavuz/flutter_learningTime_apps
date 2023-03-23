import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldUsage extends StatefulWidget {
  const TextFormFieldUsage({super.key});

  @override
  State<TextFormFieldUsage> createState() => _TextFormFieldUsageState();
}

class _TextFormFieldUsageState extends State<TextFormFieldUsage> {
  String _userName = "", _email = "", _password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Form Field Usage")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  //initialValue: "BunyaminYavuz",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Username"),
                    hintText: "Username",
                  ),
                  validator: (value) {
                    if (value!.length < 8) {
                      return "Username must contains at least 8 characters";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _userName = newValue!;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  //initialValue: "1b.yavuz07@gmail.com",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email"),
                    hintText: "Email",
                  ),
                  validator: (value) {
                    if (!EmailValidator.validate(value!)) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  //initialValue: "",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    hintText: "Password",
                  ),
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Password length must be at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (() {
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();
                      String result =
                          "Username : $_userName\nEmail : $_email\nPassword : $_password";
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.orange,
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                      _formKey.currentState!.reset();
                    }
                  }),
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
