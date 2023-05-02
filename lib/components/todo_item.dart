import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.myTodo, required this.removeTodo,
  });

  final String myTodo;
  final VoidCallback removeTodo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          myTodo,
          style: const TextStyle(fontSize: 19),
        ),
        GestureDetector(
          onTap: removeTodo,
          child: const Icon(
            Icons.close,
            color: Colors.red,
          ),
        )
      ]),
    );
  }
}
