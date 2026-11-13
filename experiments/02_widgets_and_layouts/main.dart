import 'package:flutter/material.dart';

class WidgetsLayoutDemo extends StatelessWidget {
  const WidgetsLayoutDemo({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Widgets and Layouts')),
    body: Center(child: Stack(alignment: Alignment.bottomCenter, children: [
      Container(width: 280, height: 190, decoration: BoxDecoration(color: Colors.indigo.shade100, borderRadius: BorderRadius.circular(20))),
      const Padding(padding: EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.school, size: 56, color: Colors.indigo), Text('Student Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.person), Text(' Flutter learner')])]))
    ])),
  );
}
