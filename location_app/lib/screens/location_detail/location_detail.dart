import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location Detail')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/m_m.jpg"),
          TextSection(Colors.red),
          TextSection(Colors.green),
          TextSection(Colors.blue),
        ],
      ),
    );
  }
}
