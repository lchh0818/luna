import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title:Text("To do list",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              )
          ),
          body:
              Column(
                children:[
                  Container(
                    color : Colors.white,
                    height: 600,

                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    padding : EdgeInsets.all(10),
                    child : Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.grey,
                                ],
                              ),
                            ),

                          height: 50,
                          width : double.infinity,
                          margin : EdgeInsets.all(10),
                          child : Row(
                            children: [
                              Container(
                                color:Colors.transparent,
                                margin : EdgeInsets.all(10),
                                width: 270,
                                child: Row(
                                  children: [
                                    Text("$_counter.",
                                      style: TextStyle(
                                        fontWeight:FontWeight.bold,
                                        fontSize: 22,
                                    )
                                    ),
                                    Text("할일 $_counter",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,

                                    ),)
                                  ],
                                )
                              ),
                              Container(
                                color : Colors.white,
                                height : 30,
                                width: 30,
                                alignment: Alignment.centerRight,
                              )
                            ],
                          )


                        ),
                        Container(
                          color : Colors.blue,
                          height: 50,
                          margin : EdgeInsets.all(10),
                        ),
                      ],
                    )


                  ),

                  Container(
                    color: Colors.blue,
                    height: 60,
                    width: double.infinity,
                    child:
                    TextButton(onPressed: (){
                      setState(() {
                        _counter++;
                      });
                    },
                        child: Text('누르기',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
                  )



                ],
              )

      ),
    );
  }
}



