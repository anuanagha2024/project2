import 'package:flutter/material.dart';
import 'package:project2/prof.dart';

class Log extends StatelessWidget {
  const Log({super.key});

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
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: Icon(Icons.password,),
                labelText: "password",
              ),
            ),),
            SizedBox(height: 50
              ,), TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pro(),),);
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
