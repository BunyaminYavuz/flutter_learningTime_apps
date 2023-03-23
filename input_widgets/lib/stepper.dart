import 'package:flutter/material.dart';

class StepperUsage extends StatefulWidget {
  const StepperUsage({super.key});

  @override
  State<StepperUsage> createState() => _StepperUsageState();
}

class _StepperUsageState extends State<StepperUsage> {
  int _activeStep = 0;
  late String username, mail, password;
  List<Step> allSteps = [];
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  bool error = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allSteps = _allSteps();

    return Scaffold(
      appBar: AppBar(title: Text("Stepper Usage")),
      body: SingleChildScrollView(
        child: Stepper(
          steps: allSteps,
          currentStep: _activeStep,
          /*
          onStepTapped: (tappedStep) {
            setState(() {
              _activeStep = tappedStep;
            });
          },
          */
          onStepContinue: () {
            setState(() {
              if (_activeStep < allSteps.length - 1) {
                _forwardButtonCheck();
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_activeStep > 0) {
                _activeStep--;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _allSteps() {
    List<Step> steps = [
      Step(
        title: Text("Username title"),
        subtitle: Text("Username subtitle"),
        state: _editState(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
            labelText: "Username label",
            hintText: "Username hint",
            border: OutlineInputBorder(),
          ),
          validator: (enteredValue) {
            if (enteredValue!.length < 6 && !enteredValue.contains("@")) {
              return "Enter a valid mail address";
            }
          },
          onSaved: (enteredValue) {
            username = enteredValue!;
          },
        ),
      ),
      Step(
        title: Text("Mail title"),
        subtitle: Text("Mail subtitle"),
        state: _editState(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Mail label text",
            hintText: "Mail hint text",
            border: OutlineInputBorder(),
          ),
          validator: (enteredValue) {
            if (enteredValue!.length < 6 || !enteredValue.contains("@")) {
              return "Enter a valid mail address";
            }
          },
          onSaved: (enteredValue) {
            mail = enteredValue!;
          },
        ),
      ),
      Step(
        title: Text("Password title"),
        subtitle: Text("Password subtitle"),
        state: _editState(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Password label text",
            hintText: "Password hint text",
            border: OutlineInputBorder(),
          ),
          validator: (enteredValue) {
            if (enteredValue!.length < 6) {
              return "The password must be at least 6 characters";
            }
          },
          onSaved: (enteredValue) {
            password = enteredValue!;
          },
        ),
      ),
    ];
    return steps;
  }

  StepState _editState(int currentStep) {
    if (_activeStep == currentStep) {
      if (error) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _forwardButtonCheck() {
    switch (_activeStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          error = false;
          _activeStep = 1;
        } else {
          error = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          error = false;
          _activeStep = 2;
        } else {
          error = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          error = false;
          _activeStep = 2;
          _formCompleted();
        } else {
          error = true;
        }
        break;
    }
  }

  Widget _formCompleted() {
    return ScaffoldMessenger(
        child: SnackBar(content: Text("Username : $username")));
  }
}
