import 'package:ToDo/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:ToDo/screens/task_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),

      ),
    );
  }
}
