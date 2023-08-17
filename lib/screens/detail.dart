import 'package:bloc_cubit/app/appState.dart';
import 'package:bloc_cubit/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      DetailState detail = state as DetailState;
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                detail.place.description,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          );
        },
      );
    }));
  }
}
