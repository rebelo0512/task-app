import 'package:flutter/material.dart';

class TaskContentImage extends StatelessWidget {
  final String photo;

  final _noPhotoWidget = Container(
    color: Colors.red[700],
    child: const Icon(
      Icons.no_photography,
      size: 50,
    ),
  );

  TaskContentImage({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 100,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(8)),
          child: photo.isNotEmpty
              ? Image.network(
                  photo,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => _noPhotoWidget,
                )
              : _noPhotoWidget),
    );
  }
}
