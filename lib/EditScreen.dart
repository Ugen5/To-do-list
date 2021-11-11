import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/TaskData.dart';

class EditScreen extends StatelessWidget {
  static String route_name = 'EditScreen';

  @override
  Widget build(BuildContext context) {

    TaskData taskData = ModalRoute.of(context)!.settings.arguments as TaskData;
    TextEditingController editedTask = TextEditingController(text: taskData.tasks[taskData.index]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: editedTask,
              onChanged: (String value) {
                editedTask.text = value;
              },
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        taskData.tasks[taskData.index] = editedTask.text;
                        Navigator.pop(context,taskData.tasks);
                      },
                      child: Text('Edit'),

                  ),
                ),
                
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        taskData.tasks.removeAt(taskData.index);
                        Navigator.pop(context,taskData.tasks);
                      },
                      child: Text('Delete'),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
