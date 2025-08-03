import 'package:flutter/material.dart';

class FavoretScreen extends StatelessWidget {
  const FavoretScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Favoret Screen'),
      ),
      appBar: AppBar(
        title: Text('Favoret'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the button
        },
        child: Icon(Icons.add),
      ),
    );
  }
}