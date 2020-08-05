import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
final bool isCheck;
final String taskTitle;
final Function checkboxCallback;
final Function longPressCallback;
TaskTile({this.isCheck,this.taskTitle,this.checkboxCallback,this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallback ,
      title: Text(taskTitle,style: isCheck ? TextStyle(decoration: TextDecoration.lineThrough): null,),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isCheck,
          onChanged: checkboxCallback),
    );
  }
}
