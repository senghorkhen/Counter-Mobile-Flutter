
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main () => runApp(counterApp());
// contructor name the same class
class counterApp extends StatelessWidget {
  @override

// start code here
int counter;     
counterApp() {
  this.counter =0;
}
void increament(){
  this.counter++;
  print(this.counter);
}
void decrement() {
  this.counter--;
  print(this.counter);
}
void viewProfile() {
  print("View Profile");
}
// know when we click button
void logEvent(String event) {
  print("Press button " + event);
}
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text(
            "Counter App",
          ),
          centerTitle: true,
          actions: <Widget>[
           FlatButton(
             onPressed: () => viewProfile(),
             child: Icon(
               Icons.person,
               color: Colors.white,
             ),
           ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: RaisedButton(
                child: Text("Increament++", style: TextStyle(color: Colors.white, fontSize: 15.0),),
                // onPressed: () {increament();},
                onPressed: () => {
                  increament(),
                  logEvent("Increment"),
                },
                color: Colors.pink,
              ),
            ),
             Container(
              child: RaisedButton(
                child: Text("Decreament--", style: TextStyle(color: Colors.white, fontSize: 15.0),),
               onPressed: () => {
                  decrement(),
                  logEvent("Decrement"),
                },
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}