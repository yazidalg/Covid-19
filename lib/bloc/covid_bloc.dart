import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'covid_event.dart';
part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial());

  @override
  Stream<CovidState> mapEventToState(
    CovidEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
