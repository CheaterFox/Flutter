import 'package:flutter/material.dart';

class CategoryEvents extends StatelessWidget {
  final String imagePath;
  final String eventName;

  CategoryEvents({
    required this.imagePath,
    required this.eventName,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
      ),
        child: Row(
          children: [
            Image.asset(imagePath,
              height: 30,
            ),
            SizedBox(width: 10,),
            Text(eventName),
          ],
        ),
      ),
    );
  }
}
