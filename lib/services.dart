import 'dart:async';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String date="";
  String time="";
  String location="";
  var client=Client();
  WorldTime({required this.location});

  Future<void> getTime() async {
      Response response = await client.get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$location'));
      Map jsonresponse = jsonDecode(response.body);
      date = jsonresponse['date'];
      var seconds=jsonresponse['seconds'].toString();
      time = "${jsonresponse['time']}:${seconds.length==1?"0$seconds":seconds}";

  }

}