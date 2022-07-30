import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'StartScreen.dart';
import 'LoadingScreen.dart';
import 'LocationsScreen.dart';
import 'Settings.dart';
import 'notficationsController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '_defaultsettings.dart';

NotificationsController notifs=NotificationsController();
Future defaultsettings() async
{
  final prefs = await SharedPreferences.getInstance();
  if (prefs.getString("area")!=null)
    {
      await initialize();
    }
  else
    {
      await setpreferences();
    }
}
void setdefaultsettings() async
{
  await defaultsettings();
  notifs.shownotifs();
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setdefaultsettings();
  runApp(MaterialApp(
      title: "World Clock",
      debugShowCheckedModeBanner: false,
      color:Colors.black,
      routes: {
        "/": (context) => const StartScreen(),
        "/home": (context) => const HomeScreen(),
        "/locations": (context) => const LocationsScreen(),
        "/loading":(context)=> LoadingScreen(),
        "/settings":(context)=>const SettingsScreen(),
      }
  ));
}