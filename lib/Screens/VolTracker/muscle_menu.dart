import 'package:flutter/material.dart';
import 'package:loadlogger/Screens/VolTracker/volume_calculator.dart';
import 'package:loadlogger/Screens/VolTracker/workout_menu.dart';
import 'package:loadlogger/Utils/dataset.dart';
import 'package:loadlogger/Widgets/muscle_tiles.dart';

class MuscleMenu extends StatefulWidget {
  const MuscleMenu({Key? key}) : super(key: key);

  @override
  State<MuscleMenu> createState() => _MuscleMenuState();
}

class _MuscleMenuState extends State<MuscleMenu> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(musclesList.length, (index) {
        return Center(
          child: GestureDetector(onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WorkoutMenu(muscle: musclesList[index].toLowerCase())));
                
          },child: MuscleTile(title: musclesList[index])),
        );
      }),
    );
  }
}
