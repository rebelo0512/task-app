import 'package:flutter/material.dart';
import 'package:task_app/screens/task_create/task_create_app_bar.dart';
import 'package:task_app/screens/task_create/task_create_body.dart';

class TaskCreateScreen extends StatelessWidget {
  const TaskCreateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: taskCreateAppBar(context), body: TaskCreateBody());
  }
}
