import 'package:flutter/material.dart';
import 'package:flutter_application/views/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      useMaterial3: false
    ),
  ));
}
