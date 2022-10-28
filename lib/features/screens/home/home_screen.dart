import 'package:flutter/material.dart';
import 'package:multi_bloc/features/screens/home/add_widget.dart';
import 'package:multi_bloc/features/screens/home/data_widget.dart';
import 'package:multi_bloc/features/screens/home/remove_widget.dart';
import 'package:multi_bloc/features/screens/home/theme_change.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              RemoveWidget(),
              DataWidget(),
              AddWidget(),
            ],
          ),
          const SizedBox(height: 20),
          const ThemeChange(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/setting'),
      ),
    );
  }
}