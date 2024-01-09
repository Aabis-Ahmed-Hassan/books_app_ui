import 'package:flutter/material.dart';
import 'package:task_project/home_screen.dart';

import 'package:device_preview/device_preview.dart';
void main() {


  runApp(
    DevicePreview(
      enabled: true,
      tools: [

        ...DevicePreview.defaultTools,
      ],
      builder: (context)=>MyApp(),
    )
  );


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
