import 'package:flutter/material.dart';
import 'package:login_todo_database/models/task_model.dart';
import 'package:login_todo_database/providers/db_provider.dart';
import 'package:login_todo_database/ui/widgets/task_item.dart';
import 'package:provider/provider.dart';

class AllTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DBProvider>(
      builder: (context, value, child) {
        List<Task> allTasks = value.allTasks;
        return ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            return TaskItem(allTasks[index]);
          },
        );
      },
    );
  }
}
