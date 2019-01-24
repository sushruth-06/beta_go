import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class traderSide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("QuorAgri"),),
      body:
      SingleChildScrollView(
          child: Column(

              children: <Widget>[



                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //controller: ,
                    decoration: InputDecoration(
                        labelText: 'Enter your question',
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
                    RaisedButton(onPressed:null,color:Colors.red,
                      child: Text('POST',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),

                  ],
                ),

              ]
          )


      ),

    );
  }
}
