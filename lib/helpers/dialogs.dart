import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';

class Utils {
  static Future<dynamic> deleteDialogue(
      {required BuildContext context,
      required String title,
      required Function(BuildContext ctx) onYes,
      required Function(BuildContext ctx) onNo}) {
    return showDialog(
      context: context,
      builder: (ctx) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          decoration: const BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                CupertinoIcons.delete_simple,
                size: 70,
                color: Colors.red,
              ),
              25.sH,
              Text(
                title,
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              20.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onNo(ctx);
                      debugPrint('NoNoNoNoNoNoNoNoNoNo');
                    },
                    child: const Text(
                      'Cancel',

                      style: TextStyle(
                        decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onYes(ctx);
                      debugPrint('yesyesyesyes');
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
