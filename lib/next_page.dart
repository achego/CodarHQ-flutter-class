// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todo_app/home.dart';
// import 'package:todo_app/providers/todo_provider.dart';

// class NextPage extends StatelessWidget {
//   const NextPage({super.key, required this.bunchOfText});

//   final String bunchOfText;

//   @override
//   Widget build(BuildContext context) {
//     final counter = Provider.of<CounterProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Next Page'),
//       ),
//       body: Center(
//           child: Column(mainAxisSize: MainAxisSize.min, children: [
//         Text('This is The next page with count of ${counter.count}'),
//         TextButton(
//             onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const Home(),
//                 )),
//             child: const Text(
//               'Move To Home',
//               style: TextStyle(fontSize: 20),
//             )),
//       ])),
//     );
//   }
// }
