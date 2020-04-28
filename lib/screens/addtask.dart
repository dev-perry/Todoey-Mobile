import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  AddTask(this.add);
  final Function add;

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
        color: Color(0xFF757575),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  autofocus: true,
                  onChanged: (newtext){
                    newTask = newtext;
                  },
                ),
                FlatButton(
                  child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  color: Colors.lightBlueAccent,
                  onPressed: (){
                    add(newTask);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
          ),
        ));
  }
}
