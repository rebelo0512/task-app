// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

enum SnackbarType { success, error, info }

class Snackbar {
  final SnackbarType type;
  String message;
  Duration duration;

  Snackbar(
      {required this.message,
      this.type = SnackbarType.info,
      this.duration = const Duration(seconds: 5)});

  Color? getBackground() {
    if (SnackbarType.error == type) {
      return Colors.red[700];
    }

    if (SnackbarType.success == type) {
      return Colors.green[700];
    }

    return Colors.grey[800];
  }

  SnackBar get(BuildContext context) {
    return SnackBar(
      content: Text(message),
      backgroundColor: getBackground(),
      showCloseIcon: true,
      duration: duration,
      dismissDirection: DismissDirection.horizontal,
      behavior: SnackBarBehavior.floating,
    );
  }
}
