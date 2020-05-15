import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/main.dart';

class WeatherPage extends StatefulWidget {
  String city = "";
  WeatherPage({this.city});
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  var weatherDate;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDAta(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wheathr of city ${widget.city}'),
        backgroundColor: Colors.teal,
      ),
      body: (weatherDate==null?
      Center(child: CircularProgressIndicator(),):
          ListView.builder(itemCount: (weatherDate==null?0:weatherDate['list'].length),
          itemBuilder: (context,index){
            return Card(
              color: Colors.teal,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    //images/
                    backgroundImage: AssetImage(""),
                  ),
                  Text(weatherDate['list'][index]['dt'].toString()),
                  Text(weatherDate['list'][index]['main']['temp'].toString()),

                ],
              ),
            );
          })
      ),
    );
  }

  void getDAta(String city) {
    String url =
        "http://api.openweathermap.org/data/2.5/forecast?q=${city}&APPID=01a067786ec77aa0de774fa4ff3111d0";
    http.get(url).then((onResp) {
// print(onResp.body);
setState(() {
  this.weatherDate=json.decode(onResp.body);

});
// print(weatherDate);
    }).catchError((onError){

    });
  }
}
