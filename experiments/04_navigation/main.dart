import 'package:flutter/material.dart';

class NavigationDemo extends StatelessWidget {
  const NavigationDemo({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Navigation')), body: Center(child: FilledButton(onPressed: () => Navigator.pushNamed(context, '/details'), child: const Text('Open details'))));
}
class DetailsDemo extends StatelessWidget {
  const DetailsDemo({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Details')), body: Center(child: FilledButton(onPressed: () => Navigator.pop(context), child: const Text('Go back'))));
}
// MaterialApp routes: {'/': (_) => const NavigationDemo(), '/details': (_) => const DetailsDemo()}
