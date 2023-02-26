import 'package:flutter/material.dart';
import 'package:todoey_flutter/modal/task.dart';
import 'package:todoey_flutter/widgets/task_list.dart';

class TaskTile extends StatelessWidget {
  final dynamic isChecked;
  final dynamic taskTitle;
  final dynamic checkBoxCallBack;
  final dynamic longPressCallback;

  TaskTile({this.isChecked, required this.taskTitle, this.checkBoxCallBack, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle.toString(),
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
