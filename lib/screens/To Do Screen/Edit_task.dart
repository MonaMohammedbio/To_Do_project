import 'package:flutter/material.dart';
import 'package:project/View_model/view_model.dart';

import 'package:provider/provider.dart';



class EditTask extends StatelessWidget {
  final task;
 int index;
  EditTask({this.task,required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    final  TextEditingController edituser=TextEditingController();

    return Consumer<ViewModel>(builder:(context,viewmodel,child){
      return AlertDialog(
        actions: <Widget>[
          TextField(
            controller: edituser,
            decoration:
            InputDecoration(label: Text("Edit Task")),
          ),
          Row(
            children: [
              TextButton(
                child: new Text("Save"),
                onPressed: () {

if(edituser.text.isNotEmpty){
  var task =edituser.text;
  viewmodel.editTask(index, task);
  edituser.clear();
}
                  Navigator.of(context).pop();
                },
              ),

            ],
          ),
        ],
      );
    });
  }
}


