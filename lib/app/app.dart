
import 'package:flutter/material.dart';

import '../presentation/resources/routes_manager.dart';



class MyApp extends StatefulWidget {

  const MyApp._internal();

  static const MyApp _instance =
      MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.homePage,

    );
  }
}


