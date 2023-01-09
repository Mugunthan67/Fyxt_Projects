import 'package:flutter/material.dart';

enum DialogsAction { ok }

class AlertDialogs {
  AlertDialogs(context, param1, String s);

  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(body),
            contentTextStyle: TextStyle(
                color: Color.fromRGBO(118, 128, 146, 1),
                fontSize: 14,
                fontFamily: 'Roboto'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(DialogsAction.ok),
                child: Text(
                  'ok'.toUpperCase(),
                  style: TextStyle(
                      color: Color.fromRGBO(245, 86, 0, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          );
        });
    return (action != null) ? action : DialogsAction.ok;
  }
}
