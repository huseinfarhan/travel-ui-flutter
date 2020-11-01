import 'package:flutter/material.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20), // set left & right padding
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // set the two widget to edge left and edge right
                    children: <Widget>[
                      Text(
                        'Top Destinations', 
                        style: TextStyle(
                          fontSize: 22, 
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
  }
}