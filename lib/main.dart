import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: home(),
));

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

 createAlertDialog(BuildContext context){

TextEditingController customController = new TextEditingController();

  return showDialog(context: context,builder: (context){
    return AlertDialog(
      title: Text('Add a new date'),
      content: TextField(
        controller: customController,
       ),
       actions: <Widget>[
         MaterialButton(
           elevation: 5.0, // z coordinate controlls the shadow below app bar.
           child: Text('submit'),
           onPressed: (){
           
           },
         )
       ],
    );
  }
   
  );
}

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:SafeArea(// to avoid instrusion by the operating system.
      child: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(80, 20, 30, 20),//left topo right bottom
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('note Title'),
              Text('200 char of the content')
            ],
          ),
          
          ),
           Container(
            height: 100.0,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(80, 20, 30, 20),//left topo right bottom
          padding: EdgeInsets.all(20.0),
          child: Text('New Title'),
          ),
            Container(
            height: 100.0,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(80, 20, 30, 20),//left topo right bottom
          padding: EdgeInsets.all(20.0),
          child: Text('New Title'),
          ),
            Container(
            height: 100.0,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(80, 20, 30, 20),//left topo right bottom
          padding: EdgeInsets.all(20.0),
          child: Text('New Title'),
          ),
           Container(
            height: 100.0,
            width: 400,
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(80, 20, 30, 20),//left topo right bottom
          padding: EdgeInsets.all(20.0),
          child: Text('New Title'),
          ),
        ],
      ),
    ),
 
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      createAlertDialog(context);
    },
    child: Text('Plus'),
    backgroundColor: Colors.red[300],
  )
  );
  }
}