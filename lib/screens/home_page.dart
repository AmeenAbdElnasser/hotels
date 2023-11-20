import 'package:flutter/material.dart';
import 'package:hotels/screens/room_app.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/hotels.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          // color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              MaterialButton(
                minWidth: 150,
                color: Colors.blue,
                height: 60,
                textColor: Colors.white,
                shape: const OutlineInputBorder(),
                child: const Text(
                  'Hotels Search',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 6),
              Stack(children: [

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Select City',
                              hintStyle: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),

                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '2023-11-10 ==> 2023-11-11',
                              hintStyle: const TextStyle(
                                color: Colors.blue,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),

                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 40,
                              ),
                              hintText: 'Select National',
                              hintStyle: const TextStyle(
                                color: Colors.blue,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),

                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 40,
                              ),
                              hintText: '1 Room, 2 Adult, 0 Children',
                              hintStyle: const TextStyle(
                                color: Colors.blue,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: const OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                      ],
                    ),
                  ),
                )
              ],),
              Positioned(

                child: MaterialButton(height: 60,
                 shape: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(16),
                 ),
                  minWidth: double.infinity,
                  color: Colors.orangeAccent,
                  textColor: Colors.white,
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'find hotels',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 16),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const RoomApp()),);
                        },
                        child: const Icon(Icons.search,
                          size: 51,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}