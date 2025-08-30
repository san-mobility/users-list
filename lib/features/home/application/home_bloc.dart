import 'dart:async';
import 'package:bus_booking/core/utils/custom_snack_bar.dart';
import 'package:bus_booking/features/home/application/usecase/home_usecases.dart';
import 'package:bus_booking/features/home/domain/models/users_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/locator.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final formKey = GlobalKey<FormState>();

  HomeBloc() : super(HomeState.initial()) {
    // update
    on<UpdateEvent>(
        (event, emit) => emit(state.copyWith(status: HomeStatus.update)));
    on<GetUsersListEvent>(usersList);
  }

  Future usersList(GetUsersListEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));

    final data = await serviceLocator<HomeUsecase>().getUsersList();

    data.fold((error) {
      showToast(message: error.message ?? '');
      emit(state.copyWith(status: HomeStatus.loaded));
    }, (success) {
      emit(state.copyWith(users: success, status: HomeStatus.loaded));
    });
  }

  Future userDetail(GetUserDetailEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));

    final data = await serviceLocator<HomeUsecase>().getUserDetails(userId: event.userId);

    data.fold((error) {
      showToast(message: error.message ?? '');
      emit(state.copyWith(status: HomeStatus.loaded));
    }, (success) {
      emit(state.copyWith(selectedUser: success, status: HomeStatus.loaded));
    });
  }

  Future deleteUser(GetUserDetailEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));

    final data = await serviceLocator<HomeUsecase>().getUserDetails(userId: event.userId);

    data.fold((error) {
      showToast(message: error.message ?? '');
      emit(state.copyWith(status: HomeStatus.loaded));
    }, (success) {
      emit(state.copyWith(selectedUser: success, status: HomeStatus.loaded));
    });
  }
}
