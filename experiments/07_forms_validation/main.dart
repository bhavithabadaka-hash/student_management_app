import 'package:flutter/material.dart';

class FormValidationDemo extends StatefulWidget { const FormValidationDemo({super.key}); @override State<FormValidationDemo> createState() => _FormValidationDemoState(); }
class _FormValidationDemoState extends State<FormValidationDemo> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Form Validation')), body: Form(key: formKey, child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [TextFormField(decoration: const InputDecoration(labelText: 'Student name'), validator: (v) => v == null || v.trim().isEmpty ? 'Enter a name' : null), const SizedBox(height: 16), FilledButton(onPressed: () { if (formKey.currentState!.validate()) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Form is valid'))); }, child: const Text('Validate'))]))));
}
