import 'package:flutter/material.dart';

class Bob extends StatelessWidget {
  const Bob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('From the Greats'),
      ),
      body: Text('Hello'),
    );
  }
}
