import 'package:flutter/material.dart';
import 'find_event_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'menu_page.dart';
import 'profile_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Icon(
                Icons.android,
                size: 100,
                color: Colors.red[50],
              ),
            Text("SETTINGS",
              style:
              TextStyle(color: Colors.purple[300],
                  fontWeight: FontWeight.bold, fontSize: 22
              ),
            ),
              SizedBox(height: 50,),
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProfilePage();
                      }));
                    }),
                      backgroundColor: Colors.white,
                      icon: Icons.person,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.deepPurple[300],
                  child: ListTile(
                    title: Text("Edit Profile"),
                    leading: Icon(Icons.man),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context){
                    }),
                      backgroundColor: Colors.white,
                      icon: Icons.explicit,
                    ),
                    SlidableAction(onPressed: ((context){
                    }),
                      backgroundColor: Colors.black,
                      icon: Icons.title,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.deepPurple[300],
                  child: ListTile(
                    title: Text("Language"),
                    leading: Icon(Icons.g_translate),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context){
                    }),
                      backgroundColor: Colors.white,
                      icon: Icons.brush_outlined,
                    ),
                    SlidableAction(onPressed: ((context){

                    }),
                      backgroundColor: Colors.black,
                      icon: Icons.brush,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.deepPurple[300],
                  child: ListTile(
                    title: Text("Theme"),
                    leading: Icon(Icons.brush),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context){

                    }),
                      backgroundColor: Colors.white,
                      icon: Icons.shield,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.deepPurple[300],
                  child: ListTile(
                    title: Text("Privacy and Security"),
                    leading: Icon(Icons.shield),
                  ),
                ),
              ),
            ],
          ),
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
