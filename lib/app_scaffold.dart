import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  static resetTo(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => AppScaffold()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
