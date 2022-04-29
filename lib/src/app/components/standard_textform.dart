import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StandardTextForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;

  StandardTextForm({required this.label, this.userInputController, this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userInputController,
      onEditingComplete: onEditingComplete ,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
