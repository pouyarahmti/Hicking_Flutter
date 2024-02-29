import 'package:flutter/material.dart';
import 'package:hicking/common/services/logger_service.dart';
import 'package:hicking/common/services/theme_service.dart';

import 'common/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    initServices();
    super.initState();
  }


  void initServices() {
    LoggerService();
    ThemeService();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeService().getCurrentThemeData(),
    );
  }
}