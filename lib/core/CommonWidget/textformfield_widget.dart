import 'package:flutter/material.dart';

class TextformfieldWidget extends StatefulWidget {
  const TextformfieldWidget({
    super.key,
    required this.controller,
    required this.hint,
  });

  final TextEditingController controller;
  final String hint;

  @override
  State<TextformfieldWidget> createState() => _TextformfieldWidget();
}

class _TextformfieldWidget extends State<TextformfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.black45),
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.black45),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
