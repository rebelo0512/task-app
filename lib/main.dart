import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/data/task_list.dart';
import 'package:task_app/screens/home/home_screen.dart';
import 'package:task_app/theme.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskList(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Task APP',
            theme: theme,
            home: const HomeScreen()));
  }
}
