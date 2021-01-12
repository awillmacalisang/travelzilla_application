import 'package:flutter/material.dart';
import 'package:travelzilla/widgets/destination_carousel.dart';
import 'package:travelzilla/widgets/municipalities_information.dart';

class Municipalities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0,),
              child: Row(children: <Widget>[IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () => Navigator.of(context).pushNamed('/home'),
              ),
              ],
              ),
            ),
            SizedBox(height: 20.0,),
            DestinationCarousel(),
            SizedBox(height: 35.0,),
            MunicipalitiesInfo(),
          ],
        ),
      ),
    );
  }
}
