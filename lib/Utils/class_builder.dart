import '../Screens/VolTracker/volume_calculator.dart';
import '../Screens/calendar_screen.dart';
import '../Screens/history_graph_screen.dart';
import '../Screens/pr_screen.dart';
import '../Screens/workout_timer.dart';
import '../Screens/breakdown_stats.dart';

typedef Constructor<T> = T Function();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor as Constructor<Object>;
}

class ClassBuilder {
  static void registerClasses() {
    register<VolumeTracker>(() => const VolumeTracker());
    register<CalendarScreen>(() => const CalendarScreen());
    register<PRScreen>(() => const PRScreen());
    register<BreakDownStats>(() => const BreakDownStats());
    register<WorkoutTimer>(() => const WorkoutTimer());
    register<HistGraphScreen>(() => const HistGraphScreen());
  }

  static dynamic fromString(String type) {
    if (_constructors[type] != null) return _constructors[type]!();
  }
}