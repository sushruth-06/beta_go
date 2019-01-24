import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 import 'new1.dart';
 import 'trader.dart';
 import 'lease.dart';
 import 'LeaseRent.dart';
import 'qna.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 1b7d6eab77f7e4bc9ae0c96823021a8f8892f303
>>>>>>> 6903b8b8ab1e5fdedcace35d37200955682aa51d


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home :Scaffold(
        appBar: AppBar(
          title: Text('AGRI CENTER',style: TextStyle(fontFamily: "Montserrat"),),
          backgroundColor: Colors.orange,
        ),
        body : MyCustomForm(),
      ),
    );

  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
        DrawerHeader(
        child: Text('Profile'),
    decoration: BoxDecoration(
    color: Colors.blue,

    ),
    ),
    ListTile(
    title: Text('Machinery market'),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Leaserent()),
      );
    // Update the state of the app
    // ...
    },
    ),
    ListTile(
    title: Text('Traders section'),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListDisplay()),
      );
    // Update the state of the app
    // ...
    },
    ),
        ListTile(
          title: Text('Expert Section'),

            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => traderSide()));
            }
            // Update the state of the app
            // ...

        ),
    ],
      ),
    )
    );
  }
  }
  /*
  vilas and me are doing this project using flutter.Flutter is a SDK built on dart.
  satwick pai , sadaf , anirudg are doing an app using android studio

  */

