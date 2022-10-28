import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/cores/bloc.dart';
import 'package:multi_bloc/features/screens/home/theme_change.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocProvider<CounterCubit>.value(
              value: cubit,
              child: BlocBuilder<CounterCubit, int>(
                bloc: cubit,
                builder: (context, state) => Text(
                  '$state',
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
          const ThemeChange(),
        ],
      ),
    );
  }
}
