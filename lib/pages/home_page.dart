import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 100;
  final String name = "tej";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NGR App")),
      body: Center(
        child: Center(
          child: Text("welcome to $days day of flutte $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
