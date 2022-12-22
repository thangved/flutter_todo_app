import 'package:flutter/material.dart';
import 'package:todo_app/modules/home/screens/home_page.dart';

class RootApp extends StatefulWidget {
  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  bool usMaterial3 = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: usMaterial3, fontFamily: 'montserrat'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo app'),
        ),
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                usMaterial3 = !usMaterial3;
              });
            },
            child: Text(
              usMaterial3 ? '3' : '2',
              style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 30),
            )),
      ),
    );
  }
}
