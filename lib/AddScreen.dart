import 'package:flutter/material.dart';
import 'package:to_do_list/HomeScreen.dart';

class AddScreen extends StatelessWidget {
  static String route_name = 'AddScreen';

  String taskName = '';


  @override
  Widget build(BuildContext context) {
  List <String> tasks = ModalRoute.of(context)!.settings.arguments as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Add Task name'),
              onChanged: (String? value){
                taskName = value!;
              },
            ),
            ElevatedButton(
                onPressed: (){
                  tasks.add(taskName);
                  Navigator.pop(context,tasks);
                },
                child: Text('Add a New Task'))
          ],
        ),
      ),
    );
  }
}
