import 'package:flutter/material.dart';
import 'package:spotify_clone/src/atomic/text-field.logic.dart';

class TaqTextField extends StatelessWidget {
  const TaqTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Theme(
          data: Theme.of(context).copyWith(
              textSelectionTheme: TextSelectionThemeData(
                  selectionColor: Theme.of(context).primaryColor)),
          child: const TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Artists, songs, or podcasts',
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
              ),
              style: TextStyle(color: Colors.black))),
    );
  }
}

class TaqTextFormField extends StatelessWidget {
  const TaqTextFormField({Key? key, required this.hintText}) : super(key: key);

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.green[900],
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
      ),
      style: const TextStyle(color: Colors.black),
      validator: taqTextFieldValidation,
    );
  }
}
