import 'package:flutter/material.dart';

import 'log.dart';

class Register extends StatelessWidget {
   Register({super.key});

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

