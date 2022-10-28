import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/cores/bloc.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = context.read<CounterCubit>();
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(35),
      child: InkWell(
        onTap: () => cubit.increment(),
        borderRadius: BorderRadius.circular(35),
        child: const SizedBox(
          width: 70,
          height: 100,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
