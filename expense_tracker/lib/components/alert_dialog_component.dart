import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogComponent {
  static void showAlertDialog({
    required BuildContext context,
    required String title,
    required String content,
  }) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder:
            (ctx) => CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                CupertinoDialogAction(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
      );
      return;
    }

    showDialog(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
    );
  }
}
