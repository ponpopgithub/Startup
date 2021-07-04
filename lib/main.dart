import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup namer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Startup namer V.1'),
        ),
        body: const Center(
          child: const Text('My Company'),
        ),
      ),
    );
  }
}
