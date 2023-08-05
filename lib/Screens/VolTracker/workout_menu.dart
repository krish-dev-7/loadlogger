import 'package:flutter/material.dart';
import 'package:loadlogger/Utils/dataset.dart';
import 'package:loadlogger/Widgets/drawer_appbar.dart';
import 'package:loadlogger/Widgets/my_drawer.dart';

class WorkoutMenu extends StatefulWidget {
  final String muscle;
  const WorkoutMenu({Key? key, required this.muscle}) : super(key: key);

  @override
  State<WorkoutMenu> createState() => _WorkoutMenuState();
}

class _WorkoutMenuState extends State<WorkoutMenu> {
  String key = "";

  getKey(){
    key = "${widget.muscle}/";
  }

  @override
  void initState() {
    print(workoutList[widget.muscle][0][0]);
    getKey();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return MyDrawer(screen:
        Scaffold(
          appBar: MyAppBar(title: widget.muscle,),
          body: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: workoutList[widget.muscle].length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height/7,
                          width: width-20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10)]
                          ),
                          child: Center(child: Text(workoutList[widget.muscle][index][0], style: const TextStyle(fontSize: 18),)),
                        ),
                      );
                    }),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            backgroundColor: Colors.black87,
            child: const Icon(Icons.add, color: Colors.red, size: 30,),
          ),
        )
    );
  }
}
