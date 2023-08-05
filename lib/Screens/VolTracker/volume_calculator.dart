import 'package:flutter/material.dart';
import 'package:loadlogger/Screens/VolTracker/muscle_menu.dart';
import 'package:loadlogger/Widgets/drawer_appbar.dart';

class VolumeTracker extends StatefulWidget {
  const VolumeTracker({Key? key}) : super(key: key);

  @override
  State<VolumeTracker> createState() => _VolumeTrackerState();
}
Widget volDis = const MuscleMenu();
class _VolumeTrackerState extends State<VolumeTracker> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Volume Tracker",),
      body: volDis,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.black87,
        child: const Icon(Icons.add, color: Colors.red, size: 30,),
      ),
    );
  }
}
