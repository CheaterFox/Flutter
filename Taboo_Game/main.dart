// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taboo Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {

  const FirstRoute({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1e1b46),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal:50,vertical: 50),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(

                  children: <TextSpan>[
                    TextSpan(text:"TABOO GAME", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Color(0xFFD9686C)),)
                  ],),),

            ),

            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal:100 ),

              child: FloatingActionButton(backgroundColor: Color(0xFFD9686C),
                child: const Text('PLAY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1e1b46),),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyHomePage()),
                  );
                },
              ),
            ),


          ],
        ),

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int time_counter = 30;
  int team_number = 1;
  Timer? _timer ;

  void _startTimer(){
    time_counter = 30;
    if(_timer != null){
      _timer!.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(time_counter>0){
          time_counter--;
        }
        else{
          if(team_number == 2){
            team_number=0;}
          team_number++;
          _timer!.cancel();
        }
      });
    });
  }

  int _counter1 = 0;
  int _counter2 = 0;
  void _incrementCounter() {
    setState(() {
      if(_timer!.isActive){
        if(team_number == 1)
          _counter1++;
        else if(team_number == 2)
          _counter2++;
      }
    });
  }
  void _decrementCounter() {
    setState(() {
      if(_timer!.isActive) {
        if (team_number == 1 && _counter1 > 0)
          _counter1--;
        else if (team_number == 2 && _counter2 > 0)
          _counter2--;
      }
    });
  }

  int image_counter = 1;
  void _changeImage() {
    setState(() {
      if(_timer!.isActive){
        if (image_counter == 4) {
          image_counter = 0;
        }
        image_counter++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal,

      body: Center(
        child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container( //1st Team Counter
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left:30,top:40,bottom: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.green,
                          ),

                          alignment: Alignment.center,
                          child: Text("$_counter1", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,color: Colors.white),),
                        ),
                        Container(
                          width: 50,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                          ),

                          alignment: Alignment.center,
                          child: Text("Team-1", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 10,color: Colors.black),),
                        ),
                      ],
                    ),

                  ),

                  Container( //Timer
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left:100,top:40,bottom: 30),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          child: Icon(Icons.timer, color: Colors.white,) ,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          child: Text("$time_counter", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,color: Colors.white)),
                        ),
                      ],

                    ),

                  ),

                  Container( //2nd Team Counter
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left:100,top:40,bottom: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,

                            color: Colors.red,
                          ),

                          alignment: Alignment.center,
                          child: Text("$_counter2", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,color: Colors.white),),
                        ),
                        Container(
                          width: 50,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,

                            color: Colors.white,
                          ),

                          alignment: Alignment.center,
                          child: Text("Team-2", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 10,color: Colors.black),),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.symmetric(vertical: 0),
                child: Image.asset('assets/$team_number-$image_counter.png'),

                alignment: Alignment.center,

              ),
            ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 30,
            bottom: 20,
            width: 100,
            child: FloatingActionButton(
              heroTag: 'back',
              onPressed: () {
                _changeImage();
                _decrementCounter();
              },
              child: const Text("TABOO", style: TextStyle(fontWeight: FontWeight.bold)

              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            right: 30,
            width: 100,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              heroTag: 'next',
              onPressed: () {
                _changeImage();
                _incrementCounter();
              },
              child: const Text("TRUE", style: TextStyle(fontWeight: FontWeight.bold)
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 155,
            width: 100,
            child: FloatingActionButton(
              backgroundColor: Colors.blue[900],
              heroTag: 'next',
              onPressed: () {
                _changeImage();
              },
              child: const Text("PASS", style: TextStyle(fontWeight: FontWeight.bold)
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 10,
            width: 390,
            child: FloatingActionButton(

              backgroundColor: Colors.yellow[700],
              heroTag: 'next',
              onPressed: () {

                if(time_counter == 30 || time_counter == 0)
                  _startTimer();

              },

              child: Text("TEAM $team_number START", style: TextStyle(fontWeight: FontWeight.bold)
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),


        ],
      ),


    );
  }
}
