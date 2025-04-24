import 'package:flutter/material.dart';

class QRShare extends StatefulWidget {
  const QRShare({super.key});

  @override
  State<QRShare> createState() => QRShareState();
}

class QRShareState extends State<QRShare> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("QR Share"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}