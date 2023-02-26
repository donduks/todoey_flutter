import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modal/task_data.dart';


import 'task_tiles.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  

 

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: ( checkboxState) {
          taskData.updateTask(task);
      },
      longPressCallback: (){
        taskData.deleteTask(task);
      },
          );
        },
        itemCount: taskData.taskCount,
      );
      }
       
    );
  }
}
