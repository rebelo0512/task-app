import 'package:flutter/material.dart';
import 'package:task_app/screens/home/components/task.dart';

class TaskList extends ChangeNotifier {
  final List<Task> _tasks = [];

  get tasks => _tasks;

  void addTask(
      {required String description,
      required int difficult,
      required String photo}) {
    _tasks.add(
        Task(description: description, photo: photo, difficult: difficult));
    notifyListeners();
  }
}
