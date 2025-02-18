import 'package:flutter/material.dart';
import 'package:vaccine/home.dart';
import 'package:vaccine/vaccine.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => const MyHome(),
      'vaccine': (context) => const MyVaccine()
    },
    initialRoute: 'home',
  ));
}
