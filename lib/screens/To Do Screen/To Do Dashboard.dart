import 'package:flutter/material.dart';
import 'package:project/View_model/view_model.dart';
import 'package:provider/provider.dart';

class ToDoDashboard extends StatelessWidget {
  const ToDoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder:(context,viewmodel,child){
      return Scaffold(
          appBar: AppBar(
            title: Text("your Dasshboard",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Colors.indigo )),
            elevation: 0,
              backgroundColor: Colors.lightBlueAccent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ),
          body: Container(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(children: [
                      Column(
                        children: [
                          Card(
                              elevation: 50,
                              color: Colors.pink.shade200,
                              child: Text(
                                "Total Tasks",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      Text("${viewmodel.getlengthoftask()}",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  Column(
                    children: [
                      Card(
                          elevation: 50,
                          color: Colors.pink.shade200,
                          child: Text(
                            "Completed Tasks",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      Text("${viewmodel.numberofcom()}",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                          elevation: 50,
                          color: Colors.pink.shade200,
                          child: Text(
                            "Non-Completed Tasks",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      Text("${viewmodel.numberofnoncom()}",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ));
    });
  }
}
