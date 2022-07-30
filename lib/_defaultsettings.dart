import 'package:shared_preferences/shared_preferences.dart';

String defaultarea="Asia/Kolkata";
bool defaultannounce=false;
String defaultnotify="Never";
Future initialize() async
{
  final prefs = await SharedPreferences.getInstance();
  defaultarea= prefs.get("area") as String;
  defaultnotify= prefs.get("notify") as String;
  defaultannounce= prefs.get("announce") as bool;
}
Future setpreferences() async
{
  final prefs = await SharedPreferences.getInstance();
  prefs.setString("area", defaultarea);
  prefs.setString("notify", defaultnotify);
  prefs.setBool("announce", defaultannounce);
}
