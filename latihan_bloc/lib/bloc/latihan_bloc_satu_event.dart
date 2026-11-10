part of 'latihan_bloc_satu_bloc.dart';

sealed class LatihanBlocSatuEvent extends Equatable {
  const LatihanBlocSatuEvent();

  @override
  List<Object> get props => [];
}

class IncrementEvent extends LatihanBlocSatuEvent {}

class DecrementEvent extends LatihanBlocSatuEvent {}
