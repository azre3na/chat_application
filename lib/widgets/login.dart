import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login"),),
        body:Center(
          child: Column(
            children: [
              TextField(decoration: InputDecoration(hintText: "Enter email"),),
              TextField(decoration: InputDecoration(hintText: "Enter password"), obscureText: true,),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));

              },child: Text("No account? Register now!"),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPage()));

              },child: Text("Forgot Password"),)

            ],
          ),
        )


    );

  }
}
