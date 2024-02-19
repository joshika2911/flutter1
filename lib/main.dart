import 'package:flutter/material.dart';
import 'loginview.dart';
import 'homeview.dart';
import 'registartionview.dart';

void main() {
  var app = MaterialApp(initialRoute: 'login_view', routes: {
    'login_view': (context) => const LoginView(),
    'home_view': (context) => const HomeView(),
    'registration_view': (context) => const RegistrationView()
  });

  runApp(app);
}
