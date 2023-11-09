import 'package:flutter/material.dart';
import 'package:project/screens/To%20Do%20Screen/Edit_task.dart';

import 'package:provider/provider.dart';

import '../../View_model/view_model.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    child:
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(

            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            itemCount: viewmodel.getlengthoftask(), //opration//
            itemBuilder: (context, index) {
              return Container(
                  child: Row(children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(width: 2),
                  checkColor: Colors.cyan,
                  activeColor: Colors.yellow,
                  value: viewmodel.getTaskCpml(index),
                  onChanged: (value) {
                    viewmodel.settaskvalue(index, value!);
                  },
                ),
                Text(viewmodel.gettitleoftask(index),
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                Spacer(),
                IconButton(
                    onPressed: () {
                      viewmodel.delettask(index);
                    },
                    icon: Icon(Icons.delete)),
                IconButton(onPressed: () {
                  viewmodel.gettitleoftask(index);
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTask(index:index)));
                }, icon: Icon(Icons.edit)),
              ]));
            },
          ));
    });
  }
}
