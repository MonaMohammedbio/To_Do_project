import 'package:flutter/material.dart';

import '../Add_task.dart';
import 'Header.dart';
import 'To Do_List.dart';


class Todoscreen extends StatelessWidget {
  const Todoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        )),body:SafeArea(
      child: Column(children: [
        Expanded(
            flex:1,
            child: Header()),


        Expanded(
            flex:5,
            child:ToDoList()),


   ]),
    ),
      floatingActionButton:AddTask(),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}