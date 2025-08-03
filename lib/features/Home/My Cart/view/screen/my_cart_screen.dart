import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('My Cart Screen'),
      ),
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the FAB
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}