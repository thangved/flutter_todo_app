import 'package:flutter/material.dart';
import 'package:todo_app/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootApp();
  }
}
