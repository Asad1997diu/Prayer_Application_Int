import 'package:flutter/material.dart';
import 'package:prayer_app_int/Style/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgcolor,
      appBar: AppBar(title: Text("Muslim Prayer Day",style: TextStyle(color: AppStyle.bgcolor),),),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[],
        ),
      ),
    ) ;
  }
}
