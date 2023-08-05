import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:loadlogger/Screens/calendar_screen.dart';
import 'package:loadlogger/Screens/history_graph_screen.dart';
import 'package:loadlogger/Screens/pr_screen.dart';
import 'package:loadlogger/Screens/VolTracker/volume_calculator.dart';
import 'package:loadlogger/Screens/workout_timer.dart';
import 'package:loadlogger/Utils/global_variables.dart';
import 'package:loadlogger/Widgets/drawer_appbar.dart';
import 'package:loadlogger/Widgets/my_drawer.dart';
import 'Utils/class_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Load Logger',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Montserrat'
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  Widget displayScreen = const VolumeTracker();

  @override
  Widget build(BuildContext context) {
    return MyDrawer(screen: displayScreen);
  }



}
