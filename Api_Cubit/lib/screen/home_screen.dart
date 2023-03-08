import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_app/services/cubit/movie_cubit.dart';
import 'package:movie_app/services/cubit/movie_state.dart';
import 'package:movie_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MoviesCubit>().displayData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie"),
        centerTitle: true,
      ),
      body: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          if (state is InitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LoadedState) {
            return ListView.builder(
              itemCount: state.sampleModel.country!.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: Text(state.sampleModel.country![index].countryId!),
                );
              }),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
