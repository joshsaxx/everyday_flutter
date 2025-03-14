import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  final pages = [
    const Center(
      child: Text('Inbox'),
    ),
    const Center(
      child: Text('Starred'),
    ),
    const Center(
      child: Text('Sent'),
    ),
    const Center(
      child: Text('Drafts'),
    ),
    const Center(
      child: Text('Trash'),
    ),
    const Center(
      child: Text('Spam'),
    ),
  ];
  
  var indexClicked = 0;


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}