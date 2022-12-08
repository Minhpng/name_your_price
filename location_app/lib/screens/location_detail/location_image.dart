import 'package:flutter/material.dart';

class LocationImage extends StatelessWidget {
  final String imageUrl;
  const LocationImage(
    this.imageUrl, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 300,
      ),
      color: Colors.red,
      child: Image.asset(imageUrl, fit: BoxFit.cover),
    );
  }
}
