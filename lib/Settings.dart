import 'package:flutter/material.dart';
import '_defaultsettings.dart';
import 'notficationsController.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  NotificationsController notifs = NotificationsController();
  bool announceValue = defaultannounce;
  var notifyValue = defaultnotify;

  List<String> timings = [
    "Never",
    "Every 05 minutes",
    'Every 10 minutes',
    'Every 15 minutes',
    "Every 30 minutes"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: const Text("Settings",style: TextStyle(fontSize:20,fontFamily: "myfont"),),
        backgroundColor: Colors.black54,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
            height: 50,
            child: Text(
              "Default Location : $defaultarea",
              style: const TextStyle(fontSize: 20,fontFamily: "myfont"),
            ),
          ),
          const Divider(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            height: 50,
            child: Row(
              children: [
                const Text(
                  "Notify : ",
                  style: TextStyle(fontSize: 20,fontFamily: "myfont"),
                ),
                PopupMenuButton(
                    position: PopupMenuPosition.under,
                    padding: EdgeInsets.zero,
                    initialValue: notifyValue,
                    onSelected: (value) => {
                          setState(() {
                            notifyValue = value.toString();
                            defaultnotify = notifyValue;
                            setpreferences();
                            notifs.shownotifs();
                          })
                        },
                    itemBuilder: (context) => <PopupMenuItem<String>>[
                          PopupMenuItem<String>(
                              value: timings[0],
                              child: Text(
                                timings[0],
                              style: TextStyle(fontFamily: "myfont"),)),
                          PopupMenuItem<String>(
                              value: timings[1],
                              child: Text(
                                timings[1],
                                style: TextStyle(fontFamily: "myfont"),
                              )),
                          PopupMenuItem<String>(
                              value: timings[2],
                              child: Text(
                                timings[2],
                                style: TextStyle(fontFamily: "myfont"),
                              )),
                          PopupMenuItem<String>(
                              value: timings[3],
                              child: Text(
                                timings[3],
                                style: TextStyle(fontFamily: "myfont"),
                              )),
                          PopupMenuItem<String>(
                              value: timings[4],
                              child: Text(
                                timings[4],
                                style: TextStyle(fontFamily: "myfont"),
                              )),
                        ],
                    child: Row(
                      children: [
                        Text(
                          notifyValue,
                          style: const TextStyle(fontSize: 20,fontFamily: "myfont"),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ))
              ],
            ),
          ),
          const Divider(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            height: 50,
            child: Row(
              children: [
                const Text(
                  "Announce time  ",
                  style: TextStyle(fontSize: 20,fontFamily: "myfont"),
                ),
                FlutterSwitch(
                  value: announceValue,
                  onToggle: (val) {
                    setState(() {
                      announceValue = val;
                    });
                    defaultannounce = announceValue;
                    setpreferences();
                  },
                  width: 50,
                  height: 25,
                )
              ],
            ),
          ),
          const Divider(
            height: 10,
          ),
        ],
      )),
    );
  }
}
