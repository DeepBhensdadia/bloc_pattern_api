part of 'home_bloc.dart';

abstract class HomeEvent {}

class RequestApi extends HomeEvent {
  final String name;

  RequestApi(this.name);
}
