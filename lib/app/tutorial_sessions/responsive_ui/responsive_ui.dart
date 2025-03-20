import 'package:flutter/material.dart';

class ResponsiveUIScreen extends StatefulWidget {
  const ResponsiveUIScreen({super.key});

  @override
  State<ResponsiveUIScreen> createState() => _ResponsiveUIScreenState();
}

class _ResponsiveUIScreenState extends State<ResponsiveUIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
      ),
      body: GridData(),
    );
  }
}

class GridData extends StatelessWidget {
  const GridData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4,
      children: List.generate(20, (index){
        return ListTile(
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
      }),
      );
  }
}

class ListData extends StatelessWidget {
  const ListData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index){
        return ListTile(
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
    
      });
  }
}