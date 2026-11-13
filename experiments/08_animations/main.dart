import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget { const AnimationDemo({super.key}); @override State<AnimationDemo> createState() => _AnimationDemoState(); }
class _AnimationDemoState extends State<AnimationDemo> {
  bool expanded = true;
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Animations')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [AnimatedOpacity(opacity: expanded ? 1 : .2, duration: const Duration(milliseconds: 600), child: AnimatedContainer(duration: const Duration(milliseconds: 600), width: expanded ? 150 : 90, height: expanded ? 150 : 90, decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(expanded ? 24 : 60)), child: const Icon(Icons.flutter_dash, color: Colors.white, size: 64))), const SizedBox(height: 20), FilledButton(onPressed: () => setState(() => expanded = !expanded), child: const Text('Animate'))])));
}
