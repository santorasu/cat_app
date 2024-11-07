import 'package:flutter/material.dart';

class PersonFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Activity"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity1("This is from home to activity 1")),
              );
            },
            child: Center(child: Text("Go Activity 1")),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity2("This is from home to activity 2")),
              );
            },
            child: Center(child: Text("Go Activity 2")),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity3()),
              );
            },
            child: Center(child: Text("Go to Activity 3")),
          ),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  final String msg;
  Activity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Activity2("This is activity 1 to activity 2 ")),
            );
          },
          child: Text("Go to Activity 2"),
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  final String msg;
  Activity2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Activity1("This is activity 2 to activity 1")),
            );
          },
          child: Text("Go to Activity 1"),
        ),
      ),
    );
  }
}

class Activity3 extends StatelessWidget {
  const Activity3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 3"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
              elevation: 80,
              child: Image.network("https://cdn.dribbble.com/users/1162077/screenshots/3848914/media/7ed7d5ca074b48b328150e5a231e8d1f.gif")
          ),
        )
      ),
    );
  }
}
