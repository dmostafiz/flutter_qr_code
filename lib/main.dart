import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String qrCodeFieldController = '';
  String qrField = '';

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
                      data: qrCodeFieldController,
                      size: 200,
                      backgroundColor: Colors.white),
                  const SizedBox(
                    height: 50,
                  ),
                  TextField(
                    // obscureText: true,
                    // controller: qrCodeFieldController,
                    onChanged: (value) {
                      setState(() {
                        qrField = value;
                      });
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'QR Code link',
                      hintText: 'Enter qr code link',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.check),
                        onPressed: () {
                          setState(() {
                            qrCodeFieldController = qrField;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
