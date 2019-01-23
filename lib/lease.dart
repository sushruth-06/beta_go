import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Lease extends StatelessWidget{
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
                ,child: Column(children:<Widget>[ Text('List your Machine',style: TextStyle(fontSize: 25),),]),

                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                color: Colors.green,

              ),

            ),
            Container(
              padding: EdgeInsets.all(20),
              child:(
                  Column(children:<Widget>[
                    Text('Vehicle type',style: TextStyle(fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
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

                    Text('Location',style: TextStyle(fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
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
                    Text('Hourly charges',style: TextStyle(fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
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
                    Text('Contact details:',style: TextStyle(fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
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
                        RaisedButton(onPressed:null,color: Colors.blueAccent,
                          child: Text('SUBMIT',style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        RaisedButton(onPressed:null,color: Colors.white,
                          child: Text('CANCEL',style: TextStyle(fontSize: 20),),
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

