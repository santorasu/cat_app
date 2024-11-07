import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                                width: double.infinity,
                                color: Colors.deepPurple,
                    child: Center(child: Text("Hello I am deepPurple")),
                              ),
                )),

            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                                width: double.infinity,
                                color: Colors.deepOrange,
                    child: Center(child: Text("Hello I am deepOrange color"),),
                              ),
                )),

            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: Center(child: Text("Hello I am BlueAccent Color")),
                  ),
                )),

            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.teal,
                    child: Center(child: Text("Hello I am Teal Color")),
                  ),
                ))
          ],
        ),
      )
    );
  }
}