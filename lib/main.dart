import 'package:assignment_7/whats_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWhats());
}

class MyWhats extends StatelessWidget {
  const MyWhats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyWidget(),
     
    );
  }
}
