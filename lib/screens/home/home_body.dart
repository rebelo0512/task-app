import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/data/task_list.dart';
import 'package:task_app/screens/home/components/task_list_empty_state.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: (context, storedValue, child) => Container(
        color: Colors.grey[900],
        height: double.infinity,
        width: double.infinity,
        child: storedValue.tasks.isEmpty
            ? const TaskListEmptyState()
            : ListView(children: storedValue.tasks),
      ),
    );
  }
}
