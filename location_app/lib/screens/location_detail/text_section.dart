import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final _title;
  final _body;
  TextSection(this._title, this._body, {super.key});

  static const double _hpad = 16;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
            child: Text(
              _title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
            child: Text(_body, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ]);
  }
}
