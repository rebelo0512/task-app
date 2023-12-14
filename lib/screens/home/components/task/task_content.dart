// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task_app/screens/home/components/task/task-content/task_content_image.dart';
import 'package:task_app/screens/home/components/task/task-content/task_content_info.dart';
import 'package:task_app/screens/home/components/task/task-content/task_content_level_up.dart';

class TaskContent extends StatelessWidget {
  final String description;
  final String photo;
  final int difficult;

  Function incrementLevel;

  TaskContent(
      {super.key,
      required this.description,
      required this.photo,
      required this.difficult,
      required this.incrementLevel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TaskContentImage(photo: photo),
            TaskContentInfo(description: description, difficult: difficult),
            TaskContentLevelUp(
              incrementLevel: incrementLevel,
            )
          ],
        ));
  }
}
