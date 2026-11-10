part of 'latihan_bloc_satu_bloc.dart';

sealed class LatihanBlocSatuState extends Equatable {
  const LatihanBlocSatuState();

  @override
  List<Object> get props => [];
}

final class LatihanBlocSatuInitial extends LatihanBlocSatuState {
  final int counter;
  const LatihanBlocSatuInitial(this.counter);
  
  @override
  List<Object> get props => [counter];
}
