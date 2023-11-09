import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../View_model/view_model.dart';
import '../To Do Screen/To_Do Screen.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var username= TextEditingController();
  var passward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder:(context,viewmodel,child){

      return Scaffold(
        body: SafeArea(
            child: Container(
              color: Colors.lightBlueAccent,
              child: ListView(children: [
              Image(height:350,image: AssetImage("images/todo-header.png")
              )
               ,SizedBox(height: 10),
                Column(
                  children: [

                   TextField(
                     controller:username ,
                      decoration: const InputDecoration(
                          filled: true,
                          labelText: 'username',
                          fillColor: Colors.white70
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      controller:passward  ,
                      decoration: const InputDecoration(
                          filled: true,
                          labelText: 'Password',
                          fillColor: Colors.white70
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),

                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.blueAccent,fontSize: 25),
                          ),
                          onPressed: () {
                            viewmodel.setusername(username.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Todoscreen()));

                          },
                        ),

                      ],
                    )
                  ],
                ),
              ]),
            )),
      );
    });
  }
}
