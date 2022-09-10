import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final qrCodeFieldController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    qrCodeFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("QR Scanner"),
            centerTitle: true,
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.qr_code),
              ),
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  QrImage(
                      data: qrCodeFieldController.text,
                      size: 200,
                      backgroundColor: Colors.white),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    // obscureText: true,
                    controller: qrCodeFieldController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'QR Code link',
                      hintText: 'Enter qr code link',
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
