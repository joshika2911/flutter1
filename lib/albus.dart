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
        child: SlideTransitionExample(),
      ),
    );
  }
}

class SlideTransitionExample extends StatefulWidget {
  const SlideTransitionExample({super.key});

  @override
  State<SlideTransitionExample> createState() => _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
            'https://gifdb.com/images/high/albus-dumbledore-pushing-harry-potter-mh259ftqownbdyph.webp',
            width: 150,
            height: 150,
            fit: BoxFit.fill),
      ),
    );
  }
}
