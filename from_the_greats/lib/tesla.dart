import 'package:flutter/material.dart';

class Tesla extends StatelessWidget {
  const Tesla({Key? key}) : super(key: key);

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
