import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Lease extends StatelessWidget{

  final a=TextEditingController();
  final b=TextEditingController();
  final c=TextEditingController();
  final d=TextEditingController();
  final e=TextEditingController();

  final CollectionReference accData=
      Firestore.instance.collection('rent_vehicles');
  static final formkey=GlobalKey<FormState>();

  submitAcc(String name,String location,String cost,String contact,String owner){
    Map<String,String> data=<String,String>{
      "contact":"$contact",
      "cost":"$cost",
      "location":"$location",
      "name":"$name",
      "owner":"$owner"
    };
    accData.add(data);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Lease Machineries'),
      ),
      body:SingleChildScrollView(
        child: Column(

          children: <Widget>[

            Center(
              child: Container(
                padding: EdgeInsets.all(20)
                ,child: Column(children:<Widget>[ Text('List your Machine',style: TextStyle(fontSize: 25,fontFamily: "Montserrat"),),]),

                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                color: Colors.green,

              ),

            ),
            Container(
              padding: EdgeInsets.all(20),
              child:(
                  Column(children:<Widget>[
                    Text('Vehicle type',style: TextStyle(fontSize: 25,fontFamily: "Montserrat")),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: a,
                        keyboardType: TextInputType.text,
                        //controller: name,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Empty';
                          }
                        },
                      ),
                    ),

                    Text('Location',style: TextStyle(fontSize: 25,fontFamily: "Montserrat")),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: b,
                        keyboardType: TextInputType.text,
                        //controller: name,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the name';
                          }
                        },
                      ),
                    ),
                    Text('Hourly charges',style: TextStyle(fontSize: 25,fontFamily: "Montserrat")),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: c,
                        keyboardType: TextInputType.text,
                        //controller: name,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the name';
                          }
                        },
                      ),
                    ),
                    Text('Owner Name:',style: TextStyle(fontSize: 25,fontFamily: "Montserrat")),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: e,
                        keyboardType: TextInputType.text,
                        //controller: name,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the name';
                          }
                        },
                      ),
                    ),
                    Text('Contact details:',style: TextStyle(fontSize: 25,fontFamily: "Montserrat")),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: d,
                        keyboardType: TextInputType.text,
                        //controller: name,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the name';
                          }
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(onPressed:()
                        {
                          submitAcc(a.text,b.text,c.text,d.text,e.text);

                        },color: Colors.blueAccent,
                          child: Text('SUBMIT',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Montserrat"),),
                        ),
                        RaisedButton(onPressed:null,color: Colors.white,
                          child: Text('CANCEL',style: TextStyle(fontSize: 20,fontFamily: "Montserrat"),),
                        ),
                      ],
                    )
                    ,
                  ]
                  )


              ),

            ),

          ],

        ),
      ),
    );

  }
}

