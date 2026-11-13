import 'package:flutter/material.dart';

class CounterDemo extends StatefulWidget { const CounterDemo({super.key}); @override State<CounterDemo> createState() => _CounterDemoState(); }
class _CounterDemoState extends State<CounterDemo> {
  int count = 0;
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('State Management')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [Text('Count: $count', style: Theme.of(context).textTheme.headlineMedium), FilledButton(onPressed: () => setState(() => count++), child: const Text('Increment')]))));
}
