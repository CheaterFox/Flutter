import 'package:flutter/material.dart';
import 'add_event_page.dart';
import 'find_event_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300] ,
      body: SafeArea(
          child: Column(

            children: [
              Icon(
                Icons.android,
                size: 100,
                color: Colors.red[50],
              ),


              //meet & learn
              Text("Meet & Learn",
                style:
                TextStyle(color: Colors.purple[300],
                    fontWeight: FontWeight.bold, fontSize: 22
                ),
              ),

              SizedBox(height: 50,),

              //Find event button
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:
                GestureDetector(
                  onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FindEventPage();
                  }));
                  },
                  child : Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.red[50],
                          ),
                          Text(
                            "FIND EVENT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20,),

              //Add event button
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AddEvent();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.library_add,
                            color: Colors.red[50],
                          ),
                          Text(
                            "ADD EVENT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              ),
              SizedBox(height: 20,),

              //Edit event button
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.event_note,
                          color: Colors.red[50],
                        ),
                        Text(
                          "EDIT EVENT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              //settings button
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SettingsPage();
                    }));
                  },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.red[50],
                        ),
                        Text(
                          "SETTINGS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
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
