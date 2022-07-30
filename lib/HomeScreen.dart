import 'dart:async';
import 'package:provider/provider.dart';
import '_DefaultSettings.dart';
import 'providercontroller.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String time = "";
  String date = "";
  String location = defaultarea;

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as Map;
    time = data['time'];
    location = data['location'];
    date = data['date'];
    var hour=int.parse(time.substring(0,2));
    TimeProvider instance = TimeProvider(time, date, location,hour, AssetImage(hour>=5 && hour<18?"assets/day.jpg":"assets/night.jpg"));
    Timer.periodic(const Duration(seconds: 1), (timer) {instance.getTimefromservices(location);});
    return ChangeNotifierProvider(
          create: (context) => instance,
          child: Consumer<TimeProvider>(builder: (context, provider, child) {
              return Scaffold(
                  floatingActionButton: FloatingActionButton(onPressed: () {
                    Navigator.pushNamed(context, "/settings");},backgroundColor: Colors.black, child: const Icon(Icons.settings,)),
                  backgroundColor: Colors.black,
                  body: SafeArea(
                  child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: instance.bgimage, fit: BoxFit.cover)),
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/locations");
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.location_on),
                            Text("Choose Location",style: TextStyle(fontSize: 20,fontFamily: "myfont"),),
                          ],
                        )).asGlass(),
                  ),
                  const SizedBox(height: 80),
                  Card(
                    color: Colors.white.withOpacity(0.4),
                    elevation: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 0),
                          child: Center(
                              child: Text(provider.location,
                                  style: const TextStyle(
                                      color: Colors.black54, fontSize: 30,fontFamily: "myfont"))),
                        ),
                        //const SizedBox(height: 10),
                        Center(
                            child: Text(
                          provider.time,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 50,fontFamily: "myfont"),
                        )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 20),
                          child: Center(
                              child: Text(provider.date,
                                  style: const TextStyle(
                                      color: Colors.black54, fontSize: 30,fontFamily: "myfont"))),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            )
                  )
              );
            }

            ),

          );

  }
}
