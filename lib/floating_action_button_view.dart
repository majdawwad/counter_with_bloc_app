import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingActionButtonView extends StatelessWidget {
  const FloatingActionButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetCounterEvent());
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.exposure_zero_outlined,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DeIncrementCounterEvent());
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.minimize_outlined,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
