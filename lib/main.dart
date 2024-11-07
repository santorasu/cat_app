import 'package:app1/Fragment/AlarmFragment.dart';
import 'package:app1/Fragment/EmailFragment.dart';
import 'package:app1/Fragment/HomeFragment.dart';
import 'package:app1/Fragment/IconFragment.dart';
import 'package:app1/Fragment/PersonFragment.dart';
import 'package:app1/Fragment/SearchFragment.dart';
import 'package:app1/Fragment/SettingsFragment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cat Collection",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.email), text: "Email"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.person), text: "Person"),
              Tab(icon: Icon(Icons.access_alarm), text: "Alarm"),
              Tab(icon: Icon(Icons.add), text: "Add Icon"),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              EmailFragment(),
              SettingsFragment(),
              PersonFragment(),
              AlarmFragment(),
              Iconfragment(),
            ],
          ),
        ),
      ),
    );
  }
}
