import 'dart:developer';
import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key, required this.count, required this.onPressed});

  final int count;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    log('message');
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Text('You have press $count times'),
      TextButton(
          onPressed: onPressed,
          child: const Text(
            'Press Me',
            style: TextStyle(fontSize: 20),
          )),
    ]));
  }
}
