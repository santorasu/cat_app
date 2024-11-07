import 'package:flutter/material.dart';

class Iconfragment extends StatelessWidget {
  const Iconfragment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        body: Center(
          child: Container(
            child: ElevatedButton(onPressed: (){}, child: Text("Search")),
          ),
        ),
      ),
    );
  }
}
