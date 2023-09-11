import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterpageState extends State<RegisterPage>{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Register"),),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                TextField(decoration: InputDecoration(hintText: "Enter email"),),
                TextField(decoration: InputDecoration(hintText: "Enter password"), obscureText: true,),
                  ElevatedButton(onPressed: (){
                    _auth.createUserWithEmailAndPassword(email: emailEditingController.text,
                        password: passwordEditingController.text).then((val){
                      if (val != null){
                        // TODO replace with toast
                        print("Succesfully registered");
                      }
                      // TODO replace with toast
                      else {
                        print("Something is wrong");
                      }
                    });
                  }, child: Text("Register")),

                )
              ],
            ),
          ),
        )


    );
  }
}
