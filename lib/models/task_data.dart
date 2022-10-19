import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_list_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Buy milk'), Task(name: 'Buy milk')];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskToAdd) {
    final task = Task(name: taskToAdd);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
