import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final IconData? icons;
  final TextInputType keyType;
  final TextEditingController? controller;
  final bool isObscureText;
  final bool isIgnore;
  final bool enabled;
  final Function? function;
  final Function(String value)? onChangedT;

  const MyTextField({
    required this.text,
    this.icons,
    this.function,
    required this.keyType,
    this.controller,
    this.isObscureText = false,
    this.isIgnore = true,
    this.enabled = true,
    this.onChangedT,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        autofocus: true,
        textAlignVertical: TextAlignVertical.bottom,
        textAlign: TextAlign.end,
        enabled: enabled,
        onChanged: (value) {
          if (onChangedT != null) {
            onChangedT!(value.toString());
          }
        },
        style: const TextStyle(fontSize: 15, color: Colors.black),
        controller: controller,
        obscureText: isObscureText,
        keyboardType: keyType,
        decoration: InputDecoration(
          hintText: text,
          enabledBorder: border(borderColors: Colors.grey),
          focusedBorder: border(
            borderColors:  Colors.blue,
          ),
          prefixIcon: IgnorePointer(
            ignoring: isIgnore,
            child: IconButton(
              onPressed: () => function!(),
              icon: Icon(icons),
              color: Colors.blue,
            ),
          ),
          prefixStyle: const TextStyle(color: Colors.blue, fontSize: 15),
        ),
      ),
    );
  }

  OutlineInputBorder border({required Color borderColors}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColors, width: 1),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
