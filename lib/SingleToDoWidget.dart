import 'package:flutter/material.dart';
import 'package:to_do_list/TaskData.dart';

class SingleToDoWidget extends StatefulWidget {
  TaskData taskData;
  SingleToDoWidget(this.taskData);

  @override
  _SingleToDoWidgetState createState() => _SingleToDoWidgetState();
}


class _SingleToDoWidgetState extends State<SingleToDoWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value){
              setState(() {
                isChecked = value!;
              });
            }),
        Text(widget.taskData.tasks[widget.taskData.index]),
      ],
    );
  }
}

