import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'app_bar.dart';
import 'button.dart';
import 'value_display.dart';

class PlaygroundPage extends StatefulWidget {
  const PlaygroundPage({super.key});

  @override
  State<PlaygroundPage> createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage> {
  int _counter = 0;
  int _elapsedMilliseconds = 0;
  final stopwatch = Stopwatch();

  void increment() {
    setState(() {
      ++_counter;
      if (stopwatch.isRunning) {
        stopwatch.stop();
        _elapsedMilliseconds = stopwatch.elapsedMilliseconds;
        stopwatch.reset();
      }
      else {
        stopwatch.start();
        _elapsedMilliseconds = 0;
      }
    });
  }

  void clear() {
    setState(() {
      if (stopwatch.isRunning) {
        return;
      }
      _counter = 0;
      _elapsedMilliseconds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBar(),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [ 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(onPressed: increment, buttonText: 'Increment'),
                    const SizedBox(height: 8),
                    Button(onPressed: clear, buttonText: 'Clear'),
                  ],
                ),
                const SizedBox(width: 16), 
                ValueDisplay(label: 'Count', value: _counter),
                const SizedBox(width: 16),
                ValueDisplay(label: 'Elapsed (ms)', value: _elapsedMilliseconds),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
