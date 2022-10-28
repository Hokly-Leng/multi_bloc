import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/cores/thembloc.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeBloc themeChange = context.read<ThemeBloc>();
    return Material(
      color: Colors.amber,
      child: InkWell(
        onTap: () => themeChange.changeTheme(),
        child: const SizedBox(
          width: 120,
          height: 50,
          child: Center(child: Text('Click Me')),
        ),
      ),
    );
  }
}
