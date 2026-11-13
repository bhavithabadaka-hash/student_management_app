import 'package:flutter/material.dart';

class ResponsiveDemo extends StatelessWidget {
  const ResponsiveDemo({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Responsive Layout')), body: LayoutBuilder(builder: (context, constraints) {
    final wide = constraints.maxWidth >= 600;
    return GridView.count(padding: const EdgeInsets.all(16), crossAxisCount: wide ? 2 : 1, childAspectRatio: wide ? 3 : 4, children: List.generate(4, (i) => Card(child: Center(child: Text('Dashboard item ${i + 1}')))));
  }));
}
