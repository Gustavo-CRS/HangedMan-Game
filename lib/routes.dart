import 'package:flutter/material.dart';
import 'package:hanged_man_project/game/pages/game_page.dart';
import 'package:hanged_man_project/home/pages/home_page.dart';

class Routes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/game':
        return MaterialPageRoute(builder: (_) => const GamePage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
