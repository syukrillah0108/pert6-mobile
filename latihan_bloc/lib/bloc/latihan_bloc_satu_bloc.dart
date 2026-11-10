import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'latihan_bloc_satu_event.dart';
part 'latihan_bloc_satu_state.dart';

class LatihanBlocSatuBloc
    extends Bloc<LatihanBlocSatuEvent, LatihanBlocSatuState> {
  LatihanBlocSatuBloc() : super(LatihanBlocSatuInitial(0)) {
    on<IncrementEvent>((event, emit) {
      final current = (state as LatihanBlocSatuInitial).counter;
      emit(LatihanBlocSatuInitial(current + 1));
    });

    on<DecrementEvent>((event, emit) {
      final current = (state as LatihanBlocSatuInitial).counter;
      emit(LatihanBlocSatuInitial(current - 1));
    });
  }
}
