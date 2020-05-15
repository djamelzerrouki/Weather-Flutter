import 'package:flutter/material.dart';
import './Weather.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String city = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(city),
      ),
      body:  Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration:InputDecoration(hintText: "Writeing the city..."),
           onChanged: (value){
                  setState(() {
             city=value;
                  });
           }
           , ),
            ),
RaisedButton(
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherPage(city: city,)));
  },
  color: Colors.amber,
  child: Text("Get Whather",style: TextStyle(color: Colors.black),),
),
            Text(
              '${this.city}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),

     );
  }
}
