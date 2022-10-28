import 'package:flutter/material.dart';
import 'package:multi_bloc/features/screens/home/home_screen.dart';
import 'package:multi_bloc/features/screens/note_found.dart';
import 'package:multi_bloc/features/screens/setting/setting_screen.dart';

class MyRoutes {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case '/setting':
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }
}
