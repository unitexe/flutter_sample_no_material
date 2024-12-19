import 'package:flutter/widgets.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Error', 
        style: TextStyle(color: Color(0xFFFFFF00))),
    );
  }
}
