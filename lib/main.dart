import 'package:flutter/material.dart';
import 'package:hotels/screens/home_page.dart';

void main() {
  runApp(Hotels());
}

class Hotels extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}
