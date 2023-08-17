import 'package:bloc_cubit/app/appState.dart';
import 'package:bloc_cubit/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is LoadedState) {
          var info = state.places;
          return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: info.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "http://mark.bslmeiyu.com/uploads/" +
                                    info[index].img),
                            fit: BoxFit.cover)),
                  ),
                );
              });
        } else {
          return Container();
        }
      }),
    );
  }
}
