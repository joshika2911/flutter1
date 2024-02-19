import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("JoJo Store"),
        ),
        body: Center(
          child: Column(children: [
            Text("WELCOME TO JoJo Store"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'registration_view');
                },
                child: const Text("Navigate to Registation")),
            const Text("HOME PAGE")
          ]),
        ));
  }
}
