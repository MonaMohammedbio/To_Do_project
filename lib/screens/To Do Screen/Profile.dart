import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../View_model/view_model.dart';

class ToDoProfile extends StatelessWidget {
  const ToDoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Scaffold(
          appBar: AppBar(
              title: Text("your Profile",textAlign: TextAlign.center
                 , style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo)),
              backgroundColor: Colors.lightBlueAccent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          backgroundColor: Colors.lightBlueAccent,
          body:
            ListView(
              children:[ Center(
              child: CircleAvatar(
          radius: 120,
          backgroundImage: AssetImage("images/person.png"),
          child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(shape: BoxShape.circle),

          ),
              )),

            Text(
          "${viewmodel.getusername()}",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
            ),
            SizedBox(
          height: 15,
            ),
            Padding(
          padding: const EdgeInsets.all(8.0),
          child:TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.indigo, width: 2)),
                    prefixIcon: Icon(Icons.work),
                    labelText: ("Job"),

                    fillColor: Colors.white70,
                    filled: true),
              ),),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.indigo, width: 2)),
                        prefixIcon: Icon(Icons.phone),
                        labelText: ("phone"),

                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                SizedBox(height: 2),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.indigo, width: 2)),
                      prefixIcon: Icon(Icons.email),
                      labelText: ("Email"),

                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),



            SizedBox(
          height: 2,
            ),
            Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 2,
                  )),
              labelText: "About",
              helperText: "Write about yourself",
                fillColor: Colors.white70,
                filled: true
            ),
          )
            )




     ])
      );




    }
    );
  }
}
