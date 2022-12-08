import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String description;
  const TextSection(
    this.title,
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            Text(description, style: Theme.of(context).textTheme.bodyMedium),
          ]),
    );
  }
}
