import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/widgets/destination_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // index for clicked 1 of 4 buttons
  int _selectedIndex = 0;
  
  // List for storing icon data
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;  // set value for every clicked icon
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).accentColor : Color(0xFFE7EBEE), // if icon clicked show original color, the rest are grey color
          borderRadius: BorderRadius.circular(30),
        ), // Icons style and color
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4), // if icon clicked show original color, the rest are grey color
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            SizedBox(height: 20),
            // call the icons with row (supaya menyamping)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // set spacing around icons
              children: _icons.asMap().entries.map(
                (MapEntry map) => _buildIcon(map.key)  // map for extracting each icon from List
              ).toList()
            ),
            SizedBox(height: 20),
            DestinationCarousel()
          ],
        ),
      ),
    );
  }
}
