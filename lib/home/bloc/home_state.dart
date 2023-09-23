part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {
  final TextEditingController controller;

  HomeLoading(this.controller);
}

class HomeData extends HomeState {
  List<UserData> users;
  final TextEditingController controller;

  HomeData({
    required this.users,
    required this.controller,
  });
}

class HomeError extends HomeState {
  final ErrorModel model;

  HomeError(this.model);
}
