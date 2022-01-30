import 'package:flutter/material.dart';

class CupertinoPageTransitionPage extends StatelessWidget {
  const CupertinoPageTransitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Text("Touch here."),
        ),
      ),
    );
  }
}
