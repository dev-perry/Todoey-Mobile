import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Create tasks with the ➕ button'),
    Task(name: 'Check them off ➡️'),
    Task(name: 'Press and hold to delete a task'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get tCount{
    return _tasks.length;
  }

  void add(String t){
    _tasks.add(Task(name: t));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int task){
    _tasks.removeAt(task);
    notifyListeners();
  }
}