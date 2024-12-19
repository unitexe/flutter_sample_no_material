import 'package:flutter/widgets.dart';
import 'button.dart';

class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: const Color(0xFFFFFF00)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Button(onPressed: () => Navigator.of(context).pushNamed('/'), buttonText: 'Home'),
            const SizedBox(width: 16),
            Button(onPressed: () => Navigator.of(context).pushNamed("/playground"), buttonText: 'Playground'),
          ]
        ),
      )
    );
  }
}