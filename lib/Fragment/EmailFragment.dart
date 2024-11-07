import 'package:flutter/material.dart';

class EmailFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Fragment"),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Color.fromRGBO(176, 234, 205, 1),
          color: Color.fromRGBO(33, 191, 115, 1),
          elevation: 80,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is card"),
            ),
          ),
        ),
      )
    );
  }
}
