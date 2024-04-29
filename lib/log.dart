import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project2/prof.dart';

class Log extends StatelessWidget {
   Log({super.key});
    final username=TextEditingController();
    final password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Login',
          style: TextStyle(color: Colors.purple),),
      ),
      body: Center(
        child: Column (
          children: [
            SizedBox(width: 400,
            child: TextField(
              controller: username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    prefixIcon: Icon(Icons.person,),
                    labelText: "username",
                  ),
            ),),SizedBox(
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
            ),),
            SizedBox(height: 50
              ,), TextButton(onPressed:() async {
                try{
                     await FirebaseAuth.instance.signInWithEmailAndPassword(email: username.text , password: password.text);
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Pro(),),);}
    on FirebaseAuthException
    catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));

                }
            },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text("login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}


