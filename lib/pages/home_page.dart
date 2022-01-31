import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 10;
  final String name = "tej";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NGR App")),
      body: Center(
        child: Center(
          child: Text("welcome to $days days of flutte $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
