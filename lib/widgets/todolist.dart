import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCall: (boxState) {
                  taskData.updateTask(task);
                },
              destroy: (){
                  taskData.deleteTask(index);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).tCount,
        );
      },
    );
  }
}
