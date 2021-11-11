import 'package:flutter/material.dart';
import 'package:to_do_list/AddScreen.dart';
import 'package:to_do_list/EditScreen.dart';
import 'package:to_do_list/SingleToDoWidget.dart';
import 'package:to_do_list/TaskData.dart';

class HomeScreen extends StatefulWidget {
  static String route_name = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => InkWell(child: SingleToDoWidget(TaskData(tasks,index)), onTap: () async{
            final result = await Navigator.pushNamed(context, EditScreen.route_name, arguments: TaskData(tasks, index));
            setState(() {
            });
          },
          ),
          itemCount: tasks.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final result = await Navigator.pushNamed(context, AddScreen.route_name, arguments: tasks);
          setState(() {

          });
        },
        child: Icon(Icons.add),),
    );
  }
}
