import 'package:flutter/material.dart';
import 'package:task_project/home_screen.dart';
import 'package:task_project/institute_home.dart';
import 'package:task_project/single_book_screen.dart';
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
      // home: Cart(),
      // home: HomeScreen(),
      // home: SingleBookScreen(),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SingleBookScreen()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstituteHome()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
