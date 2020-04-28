import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCall;
  final Function destroy;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCall, this.destroy});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: destroy,
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCall,
        ),
      ),
    );
  }
}
