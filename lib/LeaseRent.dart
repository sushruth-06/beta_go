import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'new1.dart';
import 'lease.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Leaserent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Choose any one of the following optins to continue',style: TextStyle(fontSize: 20,fontFamily: "Montserrat"),textAlign: TextAlign.center,),
              Center(
              child: RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lease()),
                );
              },
                child: Text('Leaseout your machines',style: TextStyle(fontFamily: "Montserrat")),),
            ),
            RaisedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Machinery()),
              );
            },
              child: Text("Rent other's machines",style: TextStyle(fontFamily: "Montserrat")),
            ),
            StreamBuilder(
              stream: Firestore.instance.collection('new').snapshots(),
              builder: (context,snapshot){
                return Text(snapshot.data.documents[0]['hello']);
              },
            )
          ],
        ),
    );
  }


}