import 'package:flutter/material.dart';

class Pro extends StatelessWidget {
   Pro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.teal,
      body: Center(child:Column(
        children: [
        Text(
        'PROFILE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 68,
        ),
      ),
      CircleAvatar(radius: 50, backgroundColor: Colors.white),
      SizedBox(
        height: 28,
    )],),)

    );
  }
}
