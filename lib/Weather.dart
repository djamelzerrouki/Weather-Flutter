import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
 import 'package:intl/intl.dart';

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
    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/imagegif.gif"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text('Wheathr of city ${widget.city}',
                style: TextStyle(color:Colors.black),
              ),
               centerTitle: true,

            ),



      body: (weatherDate==null?
      Center(child: CircularProgressIndicator(),):
          ListView.builder(itemCount: (weatherDate==null?0:weatherDate['list'].length),
          itemBuilder: (context,index){
            return Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                       children: <Widget>[
                        CircleAvatar(
                          //images/
                          backgroundImage: AssetImage(
                              "assets/images/${weatherDate['list'][index]['weather'][0]['main'].toString().toLowerCase()}.png"),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("${new DateFormat('E-dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(weatherDate['list'][index]['dt']*1000000))}",
                              style: TextStyle(color:Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                              Text("${new DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(weatherDate['list'][index]['dt']*1000000))} "
                                  " | ${weatherDate['list'][index]['weather'][0]['main'].toString().toLowerCase()}",
                                style: TextStyle(color:Colors.amber, fontSize: 18,fontWeight: FontWeight.bold),
                              ),

                            ],

                          ),
                        ),
                      ],
                    ),
                    Text("${(weatherDate['list'][index]['main']['temp']-272.15).round()} °C",
                      style: TextStyle(color:Colors.lightGreen, fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          })
      ),),
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
