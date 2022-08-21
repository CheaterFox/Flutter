import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  final String eventImagePath;
  final String about;
  final String place;

  EventsCard({
    required this.eventImagePath,
    required this.about,
    required this.place,
 });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[100],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(eventImagePath,
            height: 80,
            ),
          ),

          SizedBox(height: 10,),


          Text(about,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.indigo[600],
              ),
              ),
              SizedBox(height: 5,),

          Text(place,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
      ),
    ),
    );
  }
}
