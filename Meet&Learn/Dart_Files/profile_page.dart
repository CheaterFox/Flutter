import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category_events.dart';
import 'events_card.dart';
import 'login_page.dart';
import 'menu_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    "Muhammed Öğüt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MenuPage();
                    }));
                    },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.home),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.exit_to_app),
                ),
              ),

            ],
            ),
            ),

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/user.gif"),
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("What's your favorites?",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        ),
                        ),
                        SizedBox(height: 12,),
                        Text("You can go and check events",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        ),
                        SizedBox(height: 12,),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("Get Started",
                            style: TextStyle(color: Colors.white
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12),
            ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Search events"
                ),
              ),
            ),
            ),

            SizedBox(height: 25,),
            
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryEvents(imagePath: "assets/conference.png",
                      eventName: "Conferences"),
                  CategoryEvents(imagePath: "assets/festival.png",
                      eventName: "Festival"),
                  CategoryEvents(imagePath: "assets/teatalk.jpg",
                      eventName: "Tea Talk"),
                  CategoryEvents(imagePath: "assets/theatres.png",
                      eventName: "Theatre"),
                ],
              ),
            ),
            
            SizedBox(height: 25,),
            
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recently added",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
                Text("See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            ),

            SizedBox(height: 25,),

            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                EventsCard(eventImagePath: "assets/metaverse.jpg",
                    about: "Metaverse",
                    place: "Eskişehir/Turkey"),
                EventsCard(eventImagePath: "assets/mars.jpg",
                    about: "Mars",
                    place: "New York/USA"),
                EventsCard(eventImagePath: "assets/crypto.jpg",
                    about: "Cryptocurrency",
                    place: "Istanbul/Turkey"),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
