// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatefulWidget {
  TextEditingController controller;
  String label = '';
  TextInputType? keyboardType = TextInputType.text;
  String? placeholder = '';
  String? initialValue;
  List<TextInputFormatter>? inputFormatters = [];
  void Function(String)? onChanged;
  String? Function(String?)? validator;

  Input(
      {super.key,
      required this.controller,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.keyboardType,
      this.inputFormatters,
      this.onChanged,
      this.validator});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      validator: widget.validator,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.white),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(borderSide: BorderSide()),
          hintText: widget.placeholder ?? 'Digite aqui',
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black26),
    );
  }
}
