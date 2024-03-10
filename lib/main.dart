import 'package:flutter/material.dart';
import 'package:flutter_application_hw1/NewLess.dart';
import 'package:flutter_application_hw1/albus.dart';
import 'package:flutter_application_hw1/minerva.dart';
import 'package:flutter_application_hw1/ron.dart';
import 'loginview.dart';
import 'homeview.dart';
import 'loginview2.dart';
import 'registrationview.dart';

void main() {
  var app = MaterialApp(initialRoute: 'login_view', routes: {
    'login_view': (context) => const LoginView(),
    'home_view': (context) => const HomeView(),
    'registration_view': (context) => const RegistrationView(),
    'login_view2': (context) => const LoginView2(),
    'albus_view': (context) => const AlbusPage(),
    'minerva_view': (context) => const MinervaPage(),
    'stateless_login': (context) => const NewLessLogin(),
    'ron_view': (context) => const RonPage()
  });

  runApp(app);
}
