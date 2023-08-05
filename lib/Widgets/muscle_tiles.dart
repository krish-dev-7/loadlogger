import 'package:flutter/material.dart';
import 'package:loadlogger/Screens/VolTracker/volume_calculator.dart';
import 'package:loadlogger/Screens/VolTracker/workout_menu.dart';

class MuscleTile extends StatefulWidget {
  final String title;
  const MuscleTile({Key? key, required this.title}) : super(key: key);

  @override
  State<MuscleTile> createState() => _MuscleTileState();
}

class _MuscleTileState extends State<MuscleTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black87, width: 3),
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffffffff),
            boxShadow: const[BoxShadow(color: Colors.black87, blurRadius: 10)]
          ),

          child: Center(child: Text(widget.title, style: const TextStyle(fontSize: 20,color: Colors.black87),)),
        ),
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child:  Icon(Icons.circle, color: Colors.black87,),
        ),
      ],
    );
  }
}
