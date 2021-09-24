import 'package:flutter/material.dart';

Future<bool> confirmDialog(
  BuildContext context, {
  required String title,
  required String content,
  String actionText = 'OK',
  String? cancelText,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        if (cancelText != null)
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(actionText),
        ),
      ],
    ),
  );
}
