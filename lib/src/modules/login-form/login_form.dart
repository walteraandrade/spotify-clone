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
      child: Column(
        children: const [
          TaqTextFormField(
            hintText: 'Please insert your email',
          ),
          TaqTextFormField(
            hintText: 'Please insert your password',
          ),
          Text('Submit')
        ],
      ),
    );
  }
}
