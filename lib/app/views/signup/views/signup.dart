import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 10.5,
          ),
          Row(
            children: [
              Text("Signup"),
            ],
          ),
        ],
      ),
    ));
  }
}
