import 'package:flutter/material.dart';

class Userinfopage extends StatefulWidget {
  const Userinfopage({super.key});

  @override
  State<Userinfopage> createState() => _UserinfopageState();
}

class _UserinfopageState extends State<Userinfopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Info"),
      ),
      body: ListView(
        children: [
          Text("show input"),
        ],
      ),
    );
  }
}
