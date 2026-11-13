import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) => Card(child: ListTile(leading: const Icon(Icons.school), title: Text(title), trailing: Text(value, style: Theme.of(context).textTheme.titleLarge)));
}
