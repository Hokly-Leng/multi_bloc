import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc/cores/bloc.dart';
import 'package:multi_bloc/cores/routes.dart';
import 'package:multi_bloc/cores/thembloc.dart';

class AppScreen extends StatelessWidget {
  AppScreen({super.key});
  final routes = MyRoutes();
  final themeChange = ThemeBloc();
  final counter = CounterCubit();
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(create: (context) => themeChange),
        BlocProvider<CounterCubit>(create: (context) => counter),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        bloc: themeChange,
        builder: ((context, state) => MaterialApp(
              title: 'Flutter Demo Muti Bloc',
              debugShowCheckedModeBanner: false,
              theme: state == true ? ThemeData.light() : ThemeData.dark(),
              initialRoute: '/',
              onGenerateRoute: routes.onRoute,
            )),
      ),
    );
  }
}
