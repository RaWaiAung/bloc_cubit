import 'package:bloc_cubit/app/appState.dart';
import 'package:bloc_cubit/app/app_cubit.dart';
import 'package:bloc_cubit/screens/detail.dart';
import 'package:bloc_cubit/screens/home.dart';
import 'package:bloc_cubit/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return Welcome();
        }
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is DetailState) {
          return Detail();
        }
        if (state is LoadedState) {
          return Home();
        } else {
          return Container();
        }
      }),
    );
  }
}
