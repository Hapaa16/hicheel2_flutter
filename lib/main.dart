import 'package:flutter/material.dart';
import 'package:naba_app/stack_example.dart';
import 'package:naba_app/Header.dart';
import 'package:naba_app/CardExample.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              HeaderStack(),
              SizedBox(
                height: 70,
              ),
              CardExample()
            ],
          ),
        ));
  }
}
