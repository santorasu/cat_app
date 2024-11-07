import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Circular Fragment"),
        ),
        body: Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              strokeWidth: 5,
            )
        )
    );
  }
}