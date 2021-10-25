import 'package:flutter/material.dart';

class text_Input extends StatelessWidget {
  const text_Input({
    Key,
    key,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(
            //keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hint,
            ),
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ],
      ),
    );
  }
}
