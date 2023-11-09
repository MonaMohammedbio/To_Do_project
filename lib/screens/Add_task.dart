import 'package:flutter/material.dart';
import 'package:project/View_model/view_model.dart';
import 'package:project/models/Task.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});
  final textuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, ViewModel, child) {
      return FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AlertDialog(
                          actions: <Widget>[
                            TextField(
                              controller: textuser,
                              decoration:
                                  InputDecoration(label: Text("Add Task")),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  child: new Text("Save"),
                                  onPressed: () {
                                    Task add = Task(textuser.text, false);

                                    ViewModel.addtask(add);

                                    textuser.clear();
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: new Text("Cancel"),
                                  onPressed: () {

                                   textuser.clear();

                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                ));
          });
    });
  }
}
