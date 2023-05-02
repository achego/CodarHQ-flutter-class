import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoProvider extends ChangeNotifier {
  // int count = 0;
  List<String> todos = [];

  Future populateTodos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final storedTodos = prefs.getStringList('todos');
    log(storedTodos.toString());
    // todos.addAll(storedTodos!);
    for (var todo in storedTodos!) {
      log(todo);
      todos.add(todo);
    }
    log(todos.toString());
  }

  addTodo(String todoName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    todos.add(todoName);
    prefs.setStringList('todos', todos);
    notifyListeners();
  }

  deleteTodo(String todo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    todos.remove(todo);
    notifyListeners();
    prefs.setStringList('todos', todos);
  }
}

// class TodoModel {
//   final String? title;
//   final String? description;
//   final bool isDone;

//   TodoModel({this.title, this.description, this.isDone = false});
// }
