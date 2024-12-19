import 'package:flutter/widgets.dart';
import 'playground_page.dart';
import 'home_page.dart';
import 'error_page.dart';

void main() => runApp(const MinimalApp());

PageRouteBuilder unknownRoute(RouteSettings settings) {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return const ErrorPage();
    }
  );
}

class MinimalApp extends StatelessWidget {
  const MinimalApp({super.key});

  Route generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return const HomePage();
          },
        );
      case '/playground':
        return PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return const PlaygroundPage();
          }
        );
      default:
        return unknownRoute(settings);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: const Color(0xFFFFFFFF),
      title: 'Minimal',
      debugShowCheckedModeBanner: false,
      textStyle: const TextStyle(color: Color(0xFFFFFF00)),
      onGenerateRoute: generate,
      onUnknownRoute: unknownRoute,
    );
  }
}
