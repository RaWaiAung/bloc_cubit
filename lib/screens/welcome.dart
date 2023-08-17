import 'package:bloc_cubit/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome"),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AppCubits>(context).getData();
                },
                child: Text("do"))
          ],
        ),
      ),
    );
  }
}
