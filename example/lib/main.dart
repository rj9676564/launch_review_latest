import 'package:flutter/material.dart';
import 'package:launch_review_latest/launch_review_latest.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Launch App Review')),
        body: Center(
          child: ElevatedButton(
            child: Text("Rate App"),
            onPressed:
                () => LaunchReviewLatest.launch(
                  androidAppId: "com.mohamednagdy.allquran",
                  iOSAppId: "6740764793",
                ),
          ),
        ),
      ),
    );
  }
}
