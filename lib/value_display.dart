import 'package:flutter/widgets.dart';

class ValueDisplay extends StatelessWidget {
  const ValueDisplay({required this.label, required this.value, super.key});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Text('$label: $value');
  }
}