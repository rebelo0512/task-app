import 'package:flutter/material.dart';
import 'package:task_app/screens/task_create/task_create_screen.dart';

class TaskListEmptyState extends StatelessWidget {
  const TaskListEmptyState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black45,
            border: Border.all(width: 1, color: Colors.black54),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.description,
              color: Colors.white,
              size: 70,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Nenhuma tarefa cadastrada',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TaskCreateScreen()));
                },
                child: const SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text('Cadastrar tarefa')],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
