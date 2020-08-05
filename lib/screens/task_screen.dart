import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ToDo/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:ToDo/models/task_data.dart';
class TaskScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext context){
    return AddTaskScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder:buildBottomSheet );
        },
      backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0 , bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.list, size: 60.0,color: Colors.lightBlueAccent,),backgroundColor: Colors.white, radius: 50.0,),
                SizedBox(height: 15.0,),
                Text('ToDo', style: TextStyle(fontSize: 60.0, color: Colors.white, fontWeight: FontWeight.w600),),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',style: TextStyle(fontSize: 18.0, color: Colors.white,),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20.0) ,topLeft:Radius.circular(20.0) ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}



