import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:designtest/model/user_data.dart';
import 'package:designtest/web_services/api_end_point.dart';
import 'package:designtest/web_services/web_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WebService service = WebService(
    dio: Dio(),
    connectivity: Connectivity(),
  );

  HomeBloc() : super(HomeInitial()) {
    on<RequestApi>((event, emit) async {
      log(event.name);
      emit(HomeLoading(TextEditingController(text: "Deep")));
      await Future.delayed(const Duration(seconds: 3));
      final response = await service.getRequest(url: event.name);
      response.fold(
        (l) {
          List<UserData> userData = userDataFromJson(l.data);
          emit(
            HomeData(
              users: userData,
              controller: TextEditingController(
                text: userData.first.title.toString(),
              ),
            ),
          );
        },
        (r) => emit(HomeError(r)),
      );
    });
  }
}
