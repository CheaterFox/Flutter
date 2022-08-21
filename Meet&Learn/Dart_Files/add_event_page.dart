import 'package:flutter/material.dart';
import 'find_event_page.dart';
import 'profile_page.dart';
import 'menu_page.dart';
class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  DateTime _dateTimeDeadLine = DateTime.now();

  void _showDatePicker() {
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025),
    ).then((value){
      setState(() {
          _dateTime = value!;
      });
    });
  }

  void _showDatePicker2() {
    showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    ).then((value){
      setState(() {
        _dateTimeDeadLine = value!;
      });
    });
  }

  void _showTimePicker(){
    showTimePicker(context: context,
        initialTime: TimeOfDay.now(),
    ).then((value){
      setState(() {
        _timeOfDay = value!;
      });
    });;
  }
  Future openDialog() => showDialog(
    context: context, builder: (context) => AlertDialog(
    title: Text("Event Created   :)"),
    backgroundColor: Colors.deepPurple[100],
  ),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child:Column(
            children: [
              Icon(
                Icons.android,
                size: 100,
                color: Colors.red[50],
              ),
              SizedBox(height: 10,),

              //form text
              Text("Event Creation Form",
                style:
                TextStyle(color: Colors.purple[300],
                    fontWeight: FontWeight.bold, fontSize: 20
                ),
              ),
              SizedBox(height: 20,),

              //email textfield
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name of Event",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              //password textfield
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type of Event",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Row(
                    children: [
                      MaterialButton(onPressed: _showDatePicker,
                        child: Text("Starting Date"),
                        color: Colors.pink[100],
                      ),
                      SizedBox(width: 10,),
                      Text(_dateTime.day.toString(), style: TextStyle(fontSize: 20),),
                      Text(" - ",style: TextStyle(fontSize: 20),),
                      Text(_dateTime.month.toString(),style: TextStyle(fontSize: 20),),
                      Text(" - ",style: TextStyle(fontSize: 20),),
                      Text(_dateTime.year.toString(),style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Row(
                    children: [
                      MaterialButton(onPressed: _showTimePicker,
                        child: Text("Starting Time"),
                        color: Colors.pink[100],
                      ),
                      SizedBox(width: 10,),
                      Text(_timeOfDay.hour.toString(), style: TextStyle(fontSize: 20),),
                      Text(" : ",style: TextStyle(fontSize: 20),),
                      Text(_timeOfDay.minute.toString(),style: TextStyle(fontSize: 20),),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Row(
                    children: [
                      MaterialButton(onPressed: _showDatePicker2,
                        child: Text("Application Deadline"),
                        color: Colors.pink[100],
                      ),
                      SizedBox(width: 10,),
                      Text(_dateTimeDeadLine.day.toString(), style: TextStyle(fontSize: 20),),
                      Text(" - ",style: TextStyle(fontSize: 20),),
                      Text(_dateTimeDeadLine.month.toString(),style: TextStyle(fontSize: 20),),
                      Text(" - ",style: TextStyle(fontSize: 20),),
                      Text(_dateTimeDeadLine.year.toString(),style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),

                child:
                GestureDetector(
                  onTap: (){
                    openDialog();
                  },
                  child : Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Create Event",
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
           ]
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
