import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:shashank_dixit/Screens/HomePage/Home_main.dart';
import 'package:shashank_dixit/Screens/ContactPage/web/injection_container.dart';
import 'package:shashank_dixit/route.dart';
import 'package:shashank_dixit/values/values.dart';
import 'App_theme.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final GlobalKey _projectsKey = GlobalKey(); // Create a GlobalKey

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        theme: AppTheme.lightThemeData, // Assuming you have an AppTheme class
        debugShowCheckedModeBanner: false,
        initialRoute: HomeMain.HomeMainRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}