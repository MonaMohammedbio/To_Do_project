import 'package:flutter/material.dart';

import '../models/Task.dart';
import '../models/User.dart';

class ViewModel extends ChangeNotifier{
  List<Task>tasks=<Task>[];
User user=User("","");

void setusername(String name){
  user.username=name;
  notifyListeners();
}

String getusername(){
  return user.username;
}


int numberofcom(){
  return tasks.where((task) => task.complete).length;
}

int numberofnoncom(){
  return tasks.where((task) => !task.complete).length;
}

int getlengthoftask(){
  return tasks.length;
}

  void settaskvalue(int taskindex , bool taskvalue){
  tasks[taskindex].complete= taskvalue;
  notifyListeners();
  }

void addtask(Task newobject){
  tasks.add(newobject);
  notifyListeners();
}
  void editTask(int index,String editTask){
    tasks[index].title=editTask;
    notifyListeners();
  }

    void delettask(int taskindex) {
      tasks.removeAt(taskindex);
      notifyListeners();
    }

    String gettitleoftask(int index) {
      return tasks[index].title;
    }
  bool getTaskCpml(int taskindex){

    return tasks[taskindex].complete;
    }


 }