import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  Color color;
  TextSection(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Text('This is some text...'),
    );
  }
}
