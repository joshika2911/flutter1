import 'package:flutter/material.dart';

class RonPage extends StatefulWidget {
  const RonPage({super.key});

  @override
  State<RonPage> createState() => _RonPageState();
}

class _RonPageState extends State<RonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JoJo Store albus"),
      ),
    );
  }
}
