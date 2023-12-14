import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task_app/components/form/input.dart';
import 'package:task_app/components/snackbar.dart';
import 'package:task_app/data/task_list.dart';

class TaskCreateForm extends StatefulWidget {
  const TaskCreateForm({
    super.key,
  });

  @override
  State<TaskCreateForm> createState() => _TaskCreateFormState();
}

class _TaskCreateFormState extends State<TaskCreateForm> {
  final _formKey = GlobalKey<FormState>();
  final int _minDifficult = 1;
  final int _maxDifficult = 10;
  final descriptionController = TextEditingController();
  final difficultController = TextEditingController();
  final imageController = TextEditingController();

  void submit(Function addTask) {
    if (!_formKey.currentState!.validate()) return;

    try {
      addTask(
        description: descriptionController.text,
        photo: imageController.text,
        difficult: difficultController.text.isNotEmpty
            ? int.parse(difficultController.text)
            : _minDifficult,
      );

      ScaffoldMessenger.of(context).showSnackBar(
          Snackbar(message: 'Tarefa criada', type: SnackbarType.success)
              .get(context));

      Navigator.pop(context);
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
          Snackbar(message: 'Erro ao criar Tarefa', type: SnackbarType.error)
              .get(context));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: (context, storedValue, child) => Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Input(
                controller: descriptionController,
                label: 'Descrição',
                validator: (value) =>
                    value!.isEmpty ? 'Insira o nome da tarefa' : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Input(
                  controller: difficultController,
                  label: 'Dificuldade',
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                  validator: (value) => value!.isEmpty ||
                          int.parse(value) > _maxDifficult ||
                          int.parse(value) < _minDifficult
                      ? 'Insira dificuldade entre $_minDifficult e $_maxDifficult'
                      : null,
                ),
              ),
              Input(
                  controller: imageController,
                  label: 'Imagem',
                  placeholder: 'URL da imagem',
                  keyboardType: TextInputType.url,
                  onChanged: (value) => setState(() {}),
                  validator: (value) =>
                      value!.isEmpty ? 'Insira uma URL de imagem' : null),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red[700],
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageController.text,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.no_photography,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () => submit(storedValue.addTask),
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
