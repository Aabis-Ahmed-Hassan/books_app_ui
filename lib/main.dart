import 'package:flutter/material.dart';

import 'cart.dart';
//For Device Preview

// void main() {
//
//
//   runApp(
//     DevicePreview(
//       enabled: true,
//       tools: [
//
//         ...DevicePreview.defaultTools,
//       ],
//       builder: (context)=>MyApp(),
//     )
//   );
//
//
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cart(),
      // home: HomeScreen(),
      // home: SingleBookScreen(),
    );
  }
}
