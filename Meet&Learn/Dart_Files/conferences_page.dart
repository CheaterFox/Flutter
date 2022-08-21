import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'find_event_page.dart';
import 'menu_page.dart';
import 'profile_page.dart';

class ConferencesPage extends StatefulWidget {
  const ConferencesPage({Key? key}) : super(key: key);

  @override
  State<ConferencesPage> createState() => _ConferencesPageState();
}

class _ConferencesPageState extends State<ConferencesPage> {
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
      context: context, builder: (context) => AlertDialog(
      title: Text("Applied to event"),
      backgroundColor: Colors.deepPurple[100],
    ),);
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          Container(
            color: Color(0xFF4468fe),
              child :
              Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 30),
                child : Column(
                  children: [
                    Image.asset("assets/metaverse.jpg"),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Conference Name:",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),

                        Text(" The Future: Metaverse",
                          style: TextStyle(color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Conference Place:",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),

                        Text(" Eskişehir/Turkey",
                          style: TextStyle(color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Starting Date:",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),

                        Text(" 20/07/2022",
                          style: TextStyle(color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Starting Time:",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),

                        Text(" 15:00",
                          style: TextStyle(color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child:
                      GestureDetector(
                        onTap:(){
                          openDialog();
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                                child:
                                Text("APPLY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Container(
            color: Colors.black,
            child: Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 30),
              child : Column(
                children: [
                  Image.asset("assets/mars.jpg"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Conference Name:",
                        style: TextStyle(color: Colors.yellow[900],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" MARS",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Conference Place:",
                        style: TextStyle(color: Colors.yellow[900],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" New York/USA",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Starting Date:",
                        style: TextStyle(color: Colors.yellow[900],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" 15/08/2022",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Starting Time:",
                        style: TextStyle(color: Colors.yellow[900],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" 14:00",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child:
                    GestureDetector(
                      onTap:(){
                        openDialog();
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:
                          Text("APPLY",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xFF006364),
            child: Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 30),
              child : Column(
                children: [
                  Image.asset("assets/cryptocurrency.jpg"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Conference Name:",
                        style: TextStyle(color: Colors.teal[100],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" Cryptocurrency",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Conference Place:",
                        style: TextStyle(color: Colors.teal[100],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" Istanbul/Turkey",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Starting Date:",
                        style: TextStyle(color: Colors.teal[100],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" 21/08/2022",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Starting Time:",
                        style: TextStyle(color: Colors.teal[100],
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),

                      Text(" 16:00",
                        style: TextStyle(color: Colors.white,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child:
                    GestureDetector(
                      onTap:(){
                        openDialog();
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[700],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child:
                          Text("APPLY",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 5,
            bottom: 5,
            width: 100,
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple[100],
              heroTag: 'home',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MenuPage();
                }));
              },
              child: Icon(Icons.home,
                color: Colors.black,),
            ),
          ),
          Positioned(
            left: 160,
            bottom: 5,
            width: 100,
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple[100],
              heroTag: 'event',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FindEventPage();
                }));
              },
              child: Icon(Icons.event,
                color: Colors.black,),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 5,
            width: 100,
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple[100],
              heroTag: 'profile',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfilePage();
                }));
              },
              child: Icon(Icons.person,
                color: Colors.black,),
            ),
          ),
        ],
      ),
    );

  }
}
