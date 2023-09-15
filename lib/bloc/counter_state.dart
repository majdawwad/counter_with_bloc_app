// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterChangeValueState extends CounterState {
  final int counter;
  CounterChangeValueState({
    required this.counter,
  });
} 
