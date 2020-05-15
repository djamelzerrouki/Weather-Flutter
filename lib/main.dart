import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Weather.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
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

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/imagegif0.gif"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[
              IconButton(
                  icon: Row(
                    children: <Widget>[
                      Icon(
                          Icons.location_on,
                          color: Colors.amber,
                        ),


                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherPage(city: city,)));
                  }),
              Text('$city',
              style: TextStyle(color: Colors.amber),),
            ],
          ),
          centerTitle: true,
          leading: IconButton(

              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {}),
        ),


        body:  Column(
          children: <Widget>[

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
style: TextStyle(color: Colors.white),
                  decoration:InputDecoration(hintText: "Write a city",
                    prefixIcon: Icon(Icons.search),
                  ),

                     onEditingComplete: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherPage(city: city,)));
                     },
                     onChanged: (value){
                    setState(() {
                      city=value;
                    });
                  }
                   ),
               ),
//             IconButton(
//              onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherPage(city: city,)));
//              },
// icon:Icon(Icons.search,color: Colors.amber,),
//            ),

          ],
        ),

      ),
    );


















  }
}
