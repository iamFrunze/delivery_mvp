import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            labelText,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
        ],
      ),
    );
  }
}
