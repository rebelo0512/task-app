import 'package:flutter/material.dart';
import 'package:task_app/screens/task_create/components/task_create_form.dart';

class TaskCreateBody extends StatefulWidget {
  const TaskCreateBody({
    super.key,
  });

  @override
  State<TaskCreateBody> createState() => _TaskCreateBodyState();
}

class _TaskCreateBodyState extends State<TaskCreateBody> {
  final descriptionController = TextEditingController();
  final difficultController = TextEditingController();
  final imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(width: 1, color: Colors.black54),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: TaskCreateForm(),
            ),
          ),
        ),
      ),
    );
  }
}
