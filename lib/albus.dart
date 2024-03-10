import 'package:flutter/material.dart';

class AlbusPage extends StatefulWidget {
  const AlbusPage({super.key});

  @override
  State<AlbusPage> createState() => _AlbusPageState();
}

class _AlbusPageState extends State<AlbusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("JoJo Store albus"),
      ),
      body: const Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.0), child: Text('frds')),
            ),
          ],
        ),
      ),
    );
  }
}
