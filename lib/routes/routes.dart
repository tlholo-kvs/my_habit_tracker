import 'package:flutter/material.dart';
import 'package:my_habit_tracker/screens/calender_view.dart';
import 'package:my_habit_tracker/screens/login.dart';
import 'package:my_habit_tracker/screens/progress_view.dart';
import 'package:my_habit_tracker/screens/today_view.dart';

class MyRoutes {
  static const loginPage = "/";
  static const calenderPage = "/calenderPage";
  static const progressPage = "/progressPage";
  static const todayPage = "/todayPage";

  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name){
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());

        case calenderPage:
        return MaterialPageRoute(builder: (context) => const CalenderPage());

      case progressPage:
        return MaterialPageRoute(builder: (context) => const ProgressPage());

      case todayPage:
        return MaterialPageRoute(builder: (context) => const TodayView());

      default:
        throw const FormatException("Route not found. Please check your routes");
    }
  }
}