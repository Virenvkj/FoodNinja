import 'package:flutter/material.dart';

class TextformfieldWidget extends StatelessWidget {
  const TextformfieldWidget({
    super.key,
    required this.controller,
    required this.hint, this.priFixIcon, this.sufFixIcon,

  });

  final TextEditingController controller;
  final Icon? priFixIcon;
  final Icon? sufFixIcon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: priFixIcon,
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.black45),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
