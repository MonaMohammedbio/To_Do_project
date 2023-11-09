

import 'package:flutter/material.dart';
import 'package:project/View_model/view_model.dart';
import 'package:project/screens/To%20Do%20Screen/Profile.dart';
import 'package:project/screens/To%20Do%20Screen/To%20Do%20Dashboard.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder:(context,viewmodel,child){
      return Row(
        children:[ IconButton(onPressed: (){ Navigator.push(context,
            MaterialPageRoute(builder: (context) => ToDoDashboard()));}, icon: Icon(Icons.dashboard,size:40,color:Colors.lightBlueAccent), ),Spacer(),
          Text("Welcome ${viewmodel.getusername()}",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.indigo ),),
          Spacer(),
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ToDoProfile()));

          }, icon: Icon(Icons.account_circle_outlined,size:40,color:Colors.lightBlueAccent))

        ],
      );
    });
  }
}
