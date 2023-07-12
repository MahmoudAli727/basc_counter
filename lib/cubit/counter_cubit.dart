// import 'package:flutter/material.dart';

import 'package:basc_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAOncrementState());
  int TeamA = 0;
  int TeamB = 0;
  void TeamIncrement({required String team, required int ButtonNumber}) {
    if (team == 'A') {
      TeamA += ButtonNumber;
      emit(CounterAOncrementState());
    } else {
      TeamB += ButtonNumber;
      emit(CounterBOncrementState());
    }
  }

  void Reset() {
    TeamA = 0;
    TeamB = 0;
    emit(CounterBOncrementState());
  }
}
