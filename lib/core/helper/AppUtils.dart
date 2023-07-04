import 'package:flutter/material.dart';

abstract class AppUtils {
  static void pushTo(BuildContext context, Widget destination) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }
}
