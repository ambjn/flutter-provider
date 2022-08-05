import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Provider Example App"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You have pushed the button this many times: ${context.watch<Counter>().count}")
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('decrement_floatingActionButton'),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
            onPressed: () => context.read<Counter>().decrement(),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: const Key('reset_floatingActionButton'),
            tooltip: 'Reset',
            child: const Icon(Icons.exposure_zero),
            onPressed: () => context.read<Counter>().reset(),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: const Key('increment_floatingActionButton'),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            onPressed: () => context.read<Counter>().increment(),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
