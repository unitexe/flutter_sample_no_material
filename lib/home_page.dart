import 'package:flutter/widgets.dart';
import 'app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBar(),
        Expanded(
          child: Center(
            child: Text(
              'Home', 
              style: TextStyle(color: Color(0xFFFFFF00))),
          ),
        ),
      ],
    );
  }
}
