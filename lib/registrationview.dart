import 'package:flutter/material.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  get nameController => null;

  get emailController => null;

  get mobileController => null;

  get addressController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("JoJo Store"),
        ),
        body: Center(
          child: Column(children: [
            const Text("REGISTER YOURSELF HERE!!!"),
            const SizedBox(height: 50),
            const Text('Name'),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Email'),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Mobile'),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: mobileController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Mobile',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Address'),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Address',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //we will trying to print input
                // ignore: avoid_print
                // print(nameController.text);
                // print(emailController.text);
                // print(mobileController.text);
                // print(addressController.text);
              },
              child: const Text(
                'WELL DONE ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home_view');
              },
              child: const Text(
                "REGISTER",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const Text("REGISTRATION PAGE")
          ]),
        ));
  }
}
