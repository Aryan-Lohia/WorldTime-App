import 'package:flutter/material.dart';
import 'services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_background/flutter_background.dart';
import '_defaultsettings.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = "", date = "";

  Future<bool> callPermissions() async {
    await Permission.ignoreBatteryOptimizations.request();
    const androidConfig = FlutterBackgroundAndroidConfig(
      notificationTitle: "Background Permissions",
      notificationText: "Background notification for keeping the example app running in the background",
      notificationImportance: AndroidNotificationImportance.Default,
      notificationIcon: AndroidResource(name: 'background_icon', defType: 'drawable'), // Default is ic_launcher from folder mipmap
    );
    bool success = await FlutterBackground.initialize(androidConfig: androidConfig);
    return Permission.ignoreBatteryOptimizations.isGranted;
  }
  void getPermissions() async
  {
    bool t=false;
    while(t==false)
      {
        t=await callPermissions() as bool;
      }
  }
  @override
  void initState() {
    super.initState();
    getPermissions();
  }

  void setupWorldTime(location) async {
    WorldTime instance = WorldTime(location: location);
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'time': instance.time,
      'date': instance.date,
      'location': instance.location
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as String;
    defaultarea=data;
    setpreferences();
    setupWorldTime(defaultarea);
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
        )));
  }
}
