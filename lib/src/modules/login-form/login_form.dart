import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          body: Column(
            children: [
              const TaqTextFormField(
                key: Key('emailField'),
                hintText: 'Please insert your email',
              ),
              const TaqTextFormField(
                key: Key('passwordField'),
                hintText: 'Please insert your password',
              ),
              TextButton(
                child: const Text('Submit'),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Success')),
                    );
                  }
                },
              )
            ],
          ),
        ));
  }
}
