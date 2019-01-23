import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'retailorDetails.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListDisplay(),
    );
  }
}

class ListDisplay extends StatelessWidget {
  var a=['a','b','c','d','e'];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Traders Section",style:TextStyle(fontFamily: "Montserrat") ,),),
        body: Column(

          children: <Widget>[

            Center(
              child: Container(
                padding: EdgeInsets.all(20)
                ,child: Column(children:<Widget>[ Text('Trader 1',style: TextStyle(fontSize: 25,fontFamily: "Montserrat"),),
              Text('Commodity 1',style: TextStyle(fontSize: 25,fontFamily: "Montserrat"),),
              RaisedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details()),
                );
              }
                ,child: Text('View',style: TextStyle(fontSize: 20,fontFamily: "Montserrat"),),),
              ]),
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                color: Colors.grey,

              ),

            ),

          ],

        )
    );
  }
}

class Details extends StatelessWidget{
  urlLaunch() async{
    const url = 'tel:8970374280';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Details"),),
        body: Container(
            padding: const EdgeInsets.only(top:50.0),
            decoration: new BoxDecoration(
                color: Colors.blue.shade100
            ),
            constraints: new BoxConstraints.expand(
              width:double.infinity,
              height: 300,
            ),
            child: Column(

                children: <Widget>[
                  Text('Crop type:',style: TextStyle(fontSize: 35),),
                  Text('Quantity:',style: TextStyle(fontSize: 35),) ,
                  Text('Date:',style: TextStyle(fontSize: 35),),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(onPressed:urlLaunch,
                          child: Text('Call',style: TextStyle(fontSize: 20),),
                        ),
                        RaisedButton(onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => null),


                          );
                        },
                          child: Text('Intrested',style: TextStyle(fontSize: 20),),
                        ),
                      ]
                  ),
                ]

            )
        )
    );
  }
}