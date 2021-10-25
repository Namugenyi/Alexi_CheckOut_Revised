import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class text_Input_SignUp extends StatelessWidget {
  const text_Input_SignUp({
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
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              keyboardType: inputType,
              textInputAction: inputAction,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
