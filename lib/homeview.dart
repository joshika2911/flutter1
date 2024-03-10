import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, this.email});
  final String? email;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("JoJo Store"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            'assets/harrypotter.jpg',
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                const Text("hello"),
                                Text(widget.email ?? "User")
                              ],
                            )),
                      ],
                    ),
                    const Icon(Icons.alarm)
                  ])),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset('assets/albus.jpg',
                width: 150, height: 150, fit: BoxFit.fill),
          ),
          const ListTile(
            title: Text('Albus Dumbledore'),
            subtitle: Text(
                'A benevolent old man who helps Harry Potter through his trials and tribulations.'),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "albus_view");
              },
              child: const Text("Click Here")),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset('assets/ron.jpg',
                width: 150, height: 150, fit: BoxFit.fill),
          ),
          const ListTile(
            title: Text('Ron Weasley'),
            subtitle:
                Text('A major hero with a sense of loyalty to his friends.'),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "ron_view");
              },
              child: const Text("Click Here")),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.asset('assets/minerva.jpg',
                width: 150, height: 150, fit: BoxFit.fill),
          ),
          const ListTile(
            title: Text('Minerva McGonagall'),
            subtitle: Text(
                'The transfiguration professor at Hogwarts and head of Gryffindor house. She is a strong warrior for the Order of the Phoenix and a fierce protector of Harry.'),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "minerva_view");
              },
              child: const Text("Click Here")),
        ])));
  }
}
