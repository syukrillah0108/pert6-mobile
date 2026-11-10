import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/latihan_bloc_satu_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Bloc",
      home: BlocProvider(
        create: (_) => LatihanBlocSatuBloc(),
        child: const CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter with BLoC')),
      body: Center(
        child: BlocBuilder<LatihanBlocSatuBloc, LatihanBlocSatuState>(
          builder: (context, state) {
            final counter = (state as LatihanBlocSatuInitial).counter;
            return Text('$counter', style: const TextStyle(fontSize: 24));
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'minus',
            onPressed: () =>
                context.read<LatihanBlocSatuBloc>().add(DecrementEvent()),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'plus',
            onPressed: () =>
                context.read<LatihanBlocSatuBloc>().add(IncrementEvent()),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
