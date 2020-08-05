import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks=[];
  int get taskCount{
    return _tasks.length;
  }
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  void addTask(String taskTitle){
    final task=Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}