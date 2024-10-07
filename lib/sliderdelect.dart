import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget{
  @override
  _ToDoListState createState() => _ToDoListState();

}
class _ToDoListState extends State<ToDoList>{
  List<String>ToDoItems = [
    "Buy groceries",
    "Walk THE dog",
    "Complete homework",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: ToDoItems.length,
        itemBuilder: (context,index){
          return Dismissible(
            key: Key(ToDoItems[index]),
            direction: DismissDirection.endToStart,
            onDismissed: (direction){
              setState((){
                ToDoItems.removeAt(index);

              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Item delected'),

                ),
              );
            },
            background: Container(
              color:Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.delete,color: Colors.white),
            ),
            child: ListTile(
              title: Text(ToDoItems[index]),
            ),
          );
        },

      ),
    );
  }
  }
