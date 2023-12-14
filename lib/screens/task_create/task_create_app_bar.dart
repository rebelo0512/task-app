import 'package:flutter/material.dart';

AppBar taskCreateAppBar(BuildContext context) => AppBar(
      title: const Text(
        'Criar Tarefa',
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
