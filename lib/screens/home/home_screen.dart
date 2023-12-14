import 'package:flutter/material.dart';
import 'package:task_app/screens/home/home_body.dart';
import 'package:task_app/screens/task_create/task_create_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarefas',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (otherContext) =>
                                const TaskCreateScreen()));
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  )),
            )
          ],
        ),
        body: const HomeBody());
  }
}
