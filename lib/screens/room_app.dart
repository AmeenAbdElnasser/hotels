import 'package:flutter/material.dart';
import 'package:hotels/widgets/custom_switch.dart';

class RoomApp extends StatelessWidget {
  const RoomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Rooms and Guests',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.backspace,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),color: Colors.grey,

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      'Rooms',
                    ),
                    SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         child: CircleAvatar(
                           backgroundColor: Colors.white70,
                           radius: 20,
                           child: Icon(
                             Icons.remove,
                             size: 20,
                             color: Colors.white,
                           ),
                         ),
                         ),
                        SizedBox(width: 20),
                        Text('1'),
                        SizedBox(width: 20),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
                padding: EdgeInsets.all(20),
                height: 240,
                width: double.infinity,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ROOM 1',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Adults',style: TextStyle(fontSize: 14),),
                        Spacer(),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.remove,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text('4'),
                        SizedBox(width: 20),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 20,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text('Children',style: TextStyle(fontSize: 16),),
                        Spacer(),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.remove,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text('2'),
                        SizedBox(width: 20),
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age of child 1',style: TextStyle(fontSize: 18),),
                        Text('14 Years',style: TextStyle(color: Colors.white70),),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age of child 2',style: TextStyle(fontSize: 18),),
                        Text('14 Years',style: TextStyle(color: Colors.white70),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
                height: 60,
                width: double.infinity,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 8,),
                            Text('Pet-friendly',style: TextStyle(fontSize: 16),),
                            SizedBox(width: 10),
                            Icon(Icons.error,color: Colors.white70,),
                          ],
                        ),
                        Text('Only show stays that allow pets',style: TextStyle(fontSize: 16,color: Colors.white70),),

                      ],
                    ),
                    SizedBox(width: 60),
                    CustomSwitch(),
                  ],
                ),
              ),
              Spacer(),
              MaterialButton(
                height: 50,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minWidth: double.infinity,
                color: Colors.blueAccent,
                textColor: Colors.white,
                  onPressed: (){},
                child: Text(
                  'Apply',
                ),
              ),
            ],
          ),
        ),
    );
  }
}
