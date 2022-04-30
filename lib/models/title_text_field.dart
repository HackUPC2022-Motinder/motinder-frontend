import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  final text;

  const TitleTextField({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }
}
