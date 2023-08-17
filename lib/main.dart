import 'package:bloc_cubit/api/dataService.dart';
import 'package:bloc_cubit/app/app_cubit.dart';
import 'package:bloc_cubit/app/app_cubit_logics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(data: DataService()),
        child: AppCubitLogics(),
      ),
    );
  }
}
