import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(
       title: Center(
         child:Text('Ruff Teas'),
       ),
        backgroundColor: Colors.purpleAccent[100],
      ),
      body: Center(
        child: Image.network('https://aventivestudio.com/wp-content/uploads/2023/02/milk-tea-packaging-1536x864.jpg')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[300],
        child: Icon(
            Icons.add,
            color: Colors.purpleAccent[100],
        ),
      ),
    ),
  ));
}

