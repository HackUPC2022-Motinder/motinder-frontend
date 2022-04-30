import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final controller;
  final labelText;

  const CustomTextfield({Key? key, this.controller, this.labelText})
      : super(key: key);

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(height: 50),
      child: TextField(
        controller: widget.controller,
        onChanged: (text) {
          setState(() {});
        },
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: widget.labelText,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            //prefixIcon: widget.icon,
            suffixIcon: widget.controller.text.length > 0
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        widget.controller.clear();
                      });
                    })
                : null),
      ),
    );
  }
}
