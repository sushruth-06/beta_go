import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//void main() => runApp(MyApp());

/*class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home :Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.orange,
        ),
        body : MyCustomForm(),
      ),
    );

  }
}*/
class Machinery extends StatelessWidget {
  var image=['https://www.mahindratractor.com/images/Album/Albumthumb/mahindra_275_eco_album.jpg','https://www.deere.com/assets/images/region-4/products/tractors/row-crop-tractors/6family-subgroup/7230r-r4d014778.jpg','https://www.antietamtractor.com/siteart/tractors.jpg','https://www.antietamtractor.com/siteart/tractors.jpg','https://www.antietamtractor.com/siteart/tractors.jpg'];

  var items=['Machine 1','Machine 2','Machine 3','Machine 4','Machine 5'];
  urlLaunch() async {
    const url = 'tel:8970374280';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Machinery Market"),


      ),
      body: ListView.builder(

        itemCount: 5,
       // itemExtent: 20,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[

                 Stack(
                    children:<Widget>[Card(

                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[ Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          StreamBuilder(
                            stream: Firestore.instance.collection('rent_vehicles').snapshots(),
                            builder: (context,snapshot){
                              return Text(snapshot.data.documents[index]['name'],style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,  fontFamily: "Montserrat"));
                            },
                          ),
                         /* Text('Machinery name',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,  fontFamily: "Montserrat"),

            ),*/
                          SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(

                            backgroundImage: CachedNetworkImageProvider(
                              image[index]),
                            //child: Text('B'.toUpperCase(),style: TextStyle(fontSize: 50,color: Colors.white),),
                            //backgroundColor: Colors.blueGrey,
                            maxRadius: 50.0,
                            //minRadius: 60.0,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: StreamBuilder(
                                stream: Firestore.instance.collection('rent_vehicles').snapshots(),
                                builder: (context,snapshot){
                                  return Text(snapshot.data.documents[index]['owner']);
                                },
                              )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                        Column(
                         // verticalDirection: VerticalDirection.down,
                         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Location::',style: TextStyle(fontSize: 15,fontFamily: "Montserrat")),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child:StreamBuilder(
                            stream: Firestore.instance.collection('rent_vehicles').snapshots(),
                            builder: (context,snapshot){
                              return Text(snapshot.data.documents[index]['location']);
                            },
                          )
                         // Text('Location',style: TextStyle(fontSize: 15,fontFamily: "Montserrat")),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Price/hour:',style: TextStyle(fontSize: 15,fontFamily: "Montserrat")),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 8),
                            child: StreamBuilder(
                              stream: Firestore.instance.collection('rent_vehicles').snapshots(),
                              builder: (context,snapshot){
                                return Text(snapshot.data.documents[index]['cost'].toString());
                              },
                            )
                        ),
                        RaisedButton(onPressed: (){}
                        ,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Rent',style: TextStyle(fontSize: 15,fontFamily: "Montserrat"),),
                        ),),
                        RaisedButton(onPressed: urlLaunch
                          ,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Call',style: TextStyle(fontSize: 15,fontFamily: "Montserrat"),),
                          ),)])
                  ],
            ),
                    ),
              ]

                ),
              ],
            ),
          );
        },
      )
    );
  }
}

