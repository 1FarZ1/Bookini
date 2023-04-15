import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  // bool isIncremented = false;

  @override
  Widget build(BuildContext context) {
    // final items = context.watch<TodoCubit>().names;
    return Scaffold(
      body: ListView.builder(
        // itemCount: items.length,
        itemBuilder: (_, index) {
          return ListTile(
            contentPadding: EdgeInsets.only(left: 80, bottom: 20),
            leading: Icon(Icons.circle),
            title: Text("index"),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<TodoCubit>().addTodo(name: 'Fares');
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // context.read<TodoCubit>().removeTodo(index: items.length - 1);
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              // context.read<TodoCubit>().reset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}


//  Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 state.val.toString(),
//                 style: const TextStyle(fontSize: 50),
//               ),
//               Visibility(
//                 visible: isIncremented,
//                 child: const Text(
//                   'Increamented',
//                 ),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//               )
//             ],
//           );

  // listenWhen: (previous, current) {
        //   if (current.val > previous.val) {
        //     isIncremented = true;
        //     return true;
        //   } else {
        //     isIncremented = false;
        //     return false;
        //   }
        // },