import 'package:flutter/material.dart';

class TaskContentInfo extends StatelessWidget {
  final String description;
  final int difficult;

  const TaskContentInfo(
      {super.key, required this.description, required this.difficult});

  List<Widget> difficultOfTaskWidgets() {
    return List<Widget>.generate(5, (index) {
      var position = index + 1;
      return Icon(
        Icons.star,
        color: position <= difficult ? Colors.red : Colors.red[100],
        size: 17,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              description,
              style: const TextStyle(
                  fontSize: 24, overflow: TextOverflow.ellipsis),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: difficultOfTaskWidgets(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
