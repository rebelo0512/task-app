// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TaskContentLevelUp extends StatelessWidget {
  Function incrementLevel;

  TaskContentLevelUp({super.key, required this.incrementLevel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
          onPressed: () => incrementLevel(),
          child: const SizedBox(
            height: 50,
            child: Column(
              children: [
                Icon(
                  Icons.arrow_drop_up_outlined,
                ),
                Text(
                  'Lvl Up',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
