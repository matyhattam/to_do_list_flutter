import 'package:flutter/material.dart';
import 'package:todo_list_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/task_data.dart';

class addTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskToAdd = '';
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskToAdd = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightBlueAccent),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(taskToAdd);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
