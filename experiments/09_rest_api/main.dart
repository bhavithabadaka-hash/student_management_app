import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget { const ApiDemo({super.key}); @override State<ApiDemo> createState() => _ApiDemoState(); }
class _ApiDemoState extends State<ApiDemo> {
  late Future<List<dynamic>> posts;
  Future<List<dynamic>> fetchPosts() async { final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=10')); if (response.statusCode != 200) throw Exception('Failed to load posts'); return jsonDecode(response.body) as List<dynamic>; }
  @override void initState() { super.initState(); posts = fetchPosts(); }
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('REST API')), body: FutureBuilder<List<dynamic>>(future: posts, builder: (context, snapshot) { if (snapshot.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator()); if (snapshot.hasError) return Center(child: Text('Error: ${snapshot.error}')); final data = snapshot.data ?? []; return ListView.builder(itemCount: data.length, itemBuilder: (_, i) => ListTile(title: Text(data[i]['title'] as String), subtitle: Text(data[i]['body'] as String))); }));
}
