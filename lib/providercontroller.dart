import 'package:flutter/material.dart';
import 'services.dart';

class TimeProvider extends ChangeNotifier
{
  String time;
  String date;
  String location;
  int hour;
  AssetImage bgimage;
  TimeProvider(this.time,this.date,this.location,this.hour,this.bgimage);
  Future<void> getTimefromservices(String location) async
   {
    WorldTime inst1=WorldTime(location:location);
    await inst1.getTime();
    time=inst1.time;
    date=inst1.date;
    location=inst1.location;
    bgimage=AssetImage(hour>=5 && hour<18?"assets/day.jpg":"assets/night.jpg");
    notifyListeners();
  }
}