import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayer_app_int/Style/app_style.dart';
import 'package:prayer_app_int/controller/controller.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  PrayerController prayerController = Get.put(PrayerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.bgcolor,
        appBar: AppBar(
            title: Text("Muslim Prayer Day",style:
            TextStyle(color: AppStyle.bgcolor),),
            backgroundColor: Colors.teal),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: <Widget>[
                  Text('Date')
                ],
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              Column(
                children: <Widget>[
                  Text(prayerController.item?.dateFor ?? 'no date'.toString()),
                ],
    ),
            ],
          )
        ),
    );
  }
}
