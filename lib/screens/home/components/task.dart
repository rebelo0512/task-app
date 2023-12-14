import 'package:flutter/material.dart';
import 'package:task_app/screens/home/components/task/task_content.dart';
import 'package:task_app/screens/home/components/task/task_footer.dart';

class Task extends StatefulWidget {
  final String description;
  final String photo;
  final int difficult;

  const Task(
      {super.key,
      required this.description,
      required this.photo,
      required this.difficult});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  void incrementLevel() {
    setState(() {
      if (widget.difficult * 5 > level) {
        level++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              TaskContent(
                  description: widget.description,
                  photo: widget.photo,
                  difficult: widget.difficult,
                  incrementLevel: incrementLevel),
              TaskFooter(
                difficult: widget.difficult,
                level: level,
              )
            ],
          ),
        ],
      ),
    );
  }
}
