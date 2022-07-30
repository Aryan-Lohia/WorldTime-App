//TODO: fonts
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:worldtime_app/_defaultsettings.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NotificationsController {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings("logo");
  static const InitializationSettings initializationSettings =
      InitializationSettings(
    android: initializationSettingsAndroid,
  );
  FlutterTts tts = FlutterTts();
  Timer? notiftimer;
  Timer? notiftimerobj;

  Future<void> _showTimeoutNotification() async {
    String currenttime = DateFormat.jm().format(DateTime.now());
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('silent channel id', 'silent channel name',
            channelDescription: 'silent channel description',
            timeoutAfter: 5000,
            priority: Priority.high,
            importance: Importance.max,
            styleInformation: DefaultStyleInformation(true, true));
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    if (defaultannounce == true) {
      tts.speak('The time is $currenttime');
    }
    await flutterLocalNotificationsPlugin.show(
        0, 'Time', 'The time is $currenttime', platformChannelSpecifics);
  }

  void showsilentnotifs() async {
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
    await _showTimeoutNotification();
  }

  void shownotifs() {
    notiftimer?.cancel();
    notiftimerobj?.cancel();
    if (defaultnotify == "Never") {
      print("object");
      notiftimer = null;
    } else {
      print("done");
      showsilentnotifs();
      notiftimer = Timer.periodic(
          Duration(minutes: int.parse(defaultnotify.split(" ")[1])), (Timer t) {
        notiftimerobj = t;
        showsilentnotifs();
      });
    }
  }
}
