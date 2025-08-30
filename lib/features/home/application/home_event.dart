part of 'home_bloc.dart';

abstract class HomeEvent {}

class UpdateEvent extends HomeEvent {}

class GetDirectionEvent extends HomeEvent {}

class GetUsersListEvent extends HomeEvent {
  final String? userId;

  GetUsersListEvent({this.userId});
}

class GetUserDetailEvent extends HomeEvent {
  final String userId;

  GetUserDetailEvent({required this.userId});
}

class DeleteUserEvent extends HomeEvent {
  final String userId;

  DeleteUserEvent({required this.userId});
}

