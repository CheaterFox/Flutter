import 'package:flutter/material.dart';
import 'conferences_page.dart';
import 'profile_page.dart';
import 'menu_page.dart';

class FindEventPage extends StatefulWidget {
  const FindEventPage({Key? key}) : super(key: key);

  @override
  State<FindEventPage> createState() => _FindEventPageState();
}

class _FindEventPageState extends State<FindEventPage> {
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
      context: context, builder: (context) => AlertDialog(
      title: Text("There is no event for this category rigth now :("),
      backgroundColor: Colors.deepPurple[100],
    ),);

    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Column(

          children: [
            Icon(
              Icons.android,
              size: 100,
              color: Colors.red[50],
            ),

            SizedBox(height: 50,),

            //events 1
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:(){
                        openDialog();
                      },
                      child :Container(
                        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                        child: Center(
                         child:
                            Text(
                              "SEMINARS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ConferencesPage();
                        }));
                      },
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 23),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                            Text(
                              "CONFERENCES",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            SizedBox(height: 20,),

            //events 2
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child:
              GestureDetector(
                onTap:(){
                  openDialog();
                },
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                            Text(
                              "WORKSHOPS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 44),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                            Text(
                              "TEA TALK",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            SizedBox(height: 20,),

            //events 3
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child:
              GestureDetector(
                onTap:(){
                  openDialog();
                },
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                            Text(
                              "TRAININGS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                            Text(
                              "THEATRES",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            SizedBox(height: 20,),

            //events 4
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child:
              GestureDetector(
                onTap:(){
                  openDialog();
                },
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                      decoration: BoxDecoration(

                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:
                        Text(
                          "WEBINARS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "FESTIVALS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
