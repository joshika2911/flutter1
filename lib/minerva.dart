import 'package:flutter/material.dart';

class MinervaPage extends StatefulWidget {
  const MinervaPage({super.key});

  @override
  State<MinervaPage> createState() => _MinervaPageState();
}

class _MinervaPageState extends State<MinervaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("JoJo Store minerva"),
      ),
    );
  }
}
