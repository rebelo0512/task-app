// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TaskFooter extends StatelessWidget {
  final int difficult;

  int level = 0;

  TaskFooter({super.key, required this.difficult, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.red[700],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: LinearProgressIndicator(
                  value: level / (difficult * 5),
                  color: Colors.redAccent[100],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'Level: $level',
                style: const TextStyle(
                    fontSize: 20, overflow: TextOverflow.ellipsis),
              ),
            )
          ],
        ),
      ),
    );
  }
}
