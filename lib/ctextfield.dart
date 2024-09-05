import 'package:flutter/material.dart';

class Ctextfield extends StatelessWidget{
  final String hintText;
  final TextEditingController controller;

  const Ctextfield({
    super.key,
    required this.hintText,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText
      ),
      controller: controller,
    );
  }
}