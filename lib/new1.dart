import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cached_network_image/cached_network_image.dart';

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
  var items=['Machine 1','Machine 2','Machine 3','Machine 4','Machine 5'];
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

                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(

                        backgroundImage: CachedNetworkImageProvider(
                          'https://www.mahindratractor.com/images/Album/Albumthumb/mahindra_275_eco_album.jpg'),
                        //child: Text('B'.toUpperCase(),style: TextStyle(fontSize: 50,color: Colors.white),),
                        //backgroundColor: Colors.blueGrey,
                        maxRadius: 80.0,
                        minRadius: 60.0,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                            'A',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}

