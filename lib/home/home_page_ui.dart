import 'dart:developer';

import 'package:designtest/home/bloc/home_bloc.dart';
import 'package:designtest/web_services/api_end_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(RequestApi(url('todos/')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Data"),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeLoading ||
            current is HomeError ||
            current is HomeData && previous != current,
        listener: (context, state) {
          if (state is HomeLoading) {
            log("Home Loading State");
          }
        },
        builder: (context, state) {
          if (state is HomeLoading) {
            return TextField(
              controller: state.controller,
            );
            // return const Center(
            //   child: CircularProgressIndicator(),
            // );
          }
          if (state is HomeError) {
            return Center(
              child: Text(state.model.message.toString()),
            );
          }
          if (state is HomeData) {
            return TextField(
              controller: state.controller,
            );
            // return ListView(
            //   children: state.users
            //       .map((e) => ListTile(
            //             title: Text(e.title.toString()),
            //           ))
            //       .toList(),
            // );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
