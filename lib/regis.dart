import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'log.dart';

class Register extends StatelessWidget {
   Register({super.key});

   final usernameController = TextEditingController();
   final email=TextEditingController();
   final password = TextEditingController();
   final conpswrd = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('REGISTER',
          style: TextStyle(color: Colors.purple),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.person,),
                  labelText: "username",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller:email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.email,),
                  labelText: "Email",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.password,),
                  labelText: "password",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller:conpswrd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.password),
                  labelText: "confirm password",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextButton(onPressed:(){

                try {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);}
               on FirebaseAuthException catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
                }

             // print('hai');
              Navigator.push(context, MaterialPageRoute(builder: (context) => Log(),),);
            },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text("Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

