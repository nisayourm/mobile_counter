import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget {
  //
  int counter;

  
  Demo(){
    this.counter = 0;

  }
  
  void increment(){
      this.counter++;
      print(this.counter);

    }

  void logEvent(String even){
      print("Press button  " +even);

    }

  void logOdd(String odd){
      print("Press button  " +odd);

    }

  void progile(){
      print("Hello world");
    }

  void decrement(){
      this.counter--;
      print(this.counter);
    }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              onPressed: (){progile();},
              child: Icon(
              Icons.person,
              color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("Increment ++",style: TextStyle(color: Colors.white),),
                onPressed: () => {
                  increment(),
                  logEvent("Increment")
               
                },
                color: Colors.pink[400],
              ),
              RaisedButton(
                child: Text("Decrement --",style: TextStyle(color: Colors.white),),

                 onPressed: () => {
                  decrement(),
                  logOdd("decrement")
                },
                color: Colors.green[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}