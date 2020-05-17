import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './GalleryPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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
  String keyWord = "";
TextEditingController editingController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage("assets/images/image0.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Text('$keyWord',
                style: TextStyle(color: Colors.deepOrange),),
            ],
          ),
          centerTitle: true,

        ),


        body:  Column(
          children: <Widget>[
//vectors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration:InputDecoration(hintText: "Search images, vectors",
                    prefixIcon: IconButton(
                        icon: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              color: Colors.deepOrange,
                            ),


                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage(keyWord: keyWord,)));
                          editingController.text="";
                        }),
                  ),

                  onEditingComplete: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage(keyWord: keyWord,)));
                    editingController.text="";
                  },
                  onChanged: (value){
                    setState(() {
                      keyWord=value;
                    });
                  },
                controller: editingController,

              ),
            ),


          ],
        ),

      ),
    );


















  }
}
