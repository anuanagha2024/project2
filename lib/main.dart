import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project2/regis.dart';
import 'package:project2/splash.dart';

import 'Register.dart';
import 'firebase_options.dart';
void main() async{await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
 runApp(MaterialApp(home: First()));// Register()))

}
