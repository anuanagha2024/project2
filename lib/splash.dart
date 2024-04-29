import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/log.dart';
import 'package:project2/regis.dart';

class First  extends StatefulWidget {
  First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Register()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(children: [Icon(Icons.insert_emoticon_outlined,color: Colors.deepPurple,size: 500,)]
        ),
      ),

    );
  }
}
