import 'package:etrade/db/dbhelper.dart';
import 'package:etrade/models/product.dart';
import 'package:etrade/screens/productList.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(     
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dijital Pazar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//enum Choice { Delete, Update }


class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
        /*
        
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: (Choice choice) {
              AlertDialog alertDialog = new AlertDialog(
                title: Text("Success"),
                content: Text("$choice"),
              );
              showDialog(context: context, builder: (_) => alertDialog);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Choice>>[
              PopupMenuItem<Choice>(
                value: Choice.Delete,
                child: Text("Delete Product"),
              ),
              PopupMenuItem<Choice>(
                value: Choice.Update,
                child: Text("Update Product"),
              ),
            ],
          ),
        ],
        */



      ),
      body: ProductList(),
       
    );
  }
}