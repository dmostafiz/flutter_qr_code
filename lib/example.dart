import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('QR  Scanner'),
            centerTitle: true,
            leading: const Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_a_photo),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: const <Widget>[],
          )),
    );
  }
}
