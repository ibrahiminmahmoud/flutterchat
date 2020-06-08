//import 'package:chat/Home_Screen.dart';
import 'package:chat/Home_Screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyWidget(
      message: 'loadDate',
      title: 'home test',
    ));

class MyWidget extends StatefulWidget {
  final String title;
  final String message;

  const MyWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState(this.title, this.message);
}

class _MyWidgetState extends State<MyWidget> {
  final String title;
  final String message;

  _MyWidgetState(this.title, this.message);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0XFF3594DD).withOpacity(1),
        accentColor: Color(0XFFFEF9E5),
        platform: TargetPlatform.fuchsia,
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
