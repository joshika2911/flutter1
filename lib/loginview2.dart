// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_hw1/homeview.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({super.key, this.email});
  final String? email;
  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
  bool c = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("JoJo Store"),
        ),
        body: Center(
          child: Column(children: [
            const Text("WELCOME!!!"),
            const SizedBox(height: 50),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                onChanged: (value) => {debugPrint("typed value->$value")},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                obscureText: c,
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            c = !c;
                          });
                        },
                        child: c
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                onChanged: (value) => {debugPrint("typed value->$value")},
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "home_view");
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            // Container(
            //   height: 50,
            //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(_createRoute());
            //   },
            //   child: const Text('Login with animation'),
            //   // ),
            // ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeView(email: emailController.text)));
              },
              child: const Text('Login'),
              // ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_view');
                  },
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'registration_view');
                },
                child: const Text("Navigate to login 2")),
            const Text("")
          ]),
        ));
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const HomeView(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

        // backgroundColor: Colors.lightBlueAccent,
       
        
         
