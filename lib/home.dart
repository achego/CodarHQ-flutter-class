import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/providers/todo_provider.dart';

import 'components/todo_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController text = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    initTodos();
    log('In init state');
    super.initState();

    // todo.populateTodos();
  }

  initTodos() async {
    setState(() {
      isLoading = true;
    });
    await Provider.of<TodoProvider>(context, listen: false).populateTodos();
    // await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLoading = false;
    });
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final TodoProvider todo = Provider.of<TodoProvider>(context);
    log(todo.todos.length.toString());
    log('Buildg');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              isLoading == true
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: ListView.builder(
                          itemCount: todo.todos.length,
                          itemBuilder: (context, index) {
                            final myTodo = todo.todos[index];
                            return TodoItem(
                              myTodo: myTodo,
                              removeTodo: () => todo.deleteTodo(myTodo),
                            );
                          })),
              TextButton(
                  onPressed: () async {
                    SharedPreferences.getInstance()
                        .then((value) => value.remove('todos'));
                  },
                  child: const Text('Delete all Todo')),
              Row(
                children: [
                  Expanded(child: TextField(controller: text)),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: () => todo.addTodo(text.text),
                    child: const Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
