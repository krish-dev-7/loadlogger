import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:loadlogger/Screens/VolTracker/volume_calculator.dart';
import 'package:loadlogger/Screens/calendar_screen.dart';
import 'package:loadlogger/Screens/history_graph_screen.dart';
import 'package:loadlogger/Screens/pr_screen.dart';
import 'package:loadlogger/Screens/workout_timer.dart';
import 'package:loadlogger/Utils/global_variables.dart';
import 'package:loadlogger/Widgets/drawer_appbar.dart';

class MyDrawer extends StatefulWidget {
  final Widget screen;
  const MyDrawer({Key? key, required this.screen}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late Widget displayScreen;
  @override
  void initState() {
    displayScreen = widget.screen;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white],
            ),
          ),
        ),
        controller: advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black87,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: SafeArea(
          child: Container(
            child: ListTileTheme(
              textColor: Colors.black,
              iconColor: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Image.asset(
                      'assets/llLogo.png',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        displayScreen = const VolumeTracker();
                      });
                      advancedDrawerController.hideDrawer();
                    },
                    leading: const Icon(Icons.sports_gymnastics),
                    title: const Text('Volume Tracker'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        displayScreen = const WorkoutTimer();
                      });
                    },
                    leading: const Icon(Icons.timelapse),
                    title: const Text('Workout Timer'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        displayScreen = const CalendarScreen();
                      });
                    },
                    leading: const Icon(Icons.calendar_today_sharp),
                    title: const Text('Calendar'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        displayScreen = const HistGraphScreen();
                      });
                    },
                    leading: const Icon(Icons.history),
                    title: const Text('Progress'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        displayScreen = const PRScreen();
                      });
                    },
                    leading: const Icon(Icons.local_fire_department_sharp),
                    title: const Text('Personal Record'),
                  ),
                  const Spacer(),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: const Text('Terms of Service | Privacy Policy'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        child: Scaffold(
            body: Stack(
          children: [displayScreen, const DrawerButton()],
        )));
  }
}
