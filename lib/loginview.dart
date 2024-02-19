import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'JoJo Store',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(children: [
            const Text(
              'DARE             ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Lucida Handwriting",
                fontSize: 50,
              ),
            ),
            const Text(
              ' TO BE           ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Lucida Handwriting",
                fontSize: 50,
              ),
            ),
            const Text(
              '    UNIQUE...       ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Lucida Handwriting",
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'ABOUT US:                 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Lucida Handwriting",
                fontSize: 30,
              ),
            ),
            const Text(
              'Hello there!!!,                                                  This is jo,This the store where you can degin your own dresses,as per your wish we design your dress at low cost.                     We are dare to create new, Are you?... ',
              style: TextStyle(
                fontFamily: " Papyrus",
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 100),
            const Text("JoJo Store"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home_view');
                },
                child: const Text("click here to login...")),
            const Text("LOGIN PAGE")
          ]),
        ));
  }
}
