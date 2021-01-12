import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelzilla/pages/destination_model.dart';
import 'package:travelzilla/pages/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Municipalities', style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5, color: Colors.white,
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/municipalitiesGrid');
              },
              child: Text('See All', style: TextStyle(color: Colors.blue[200],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
      Container(height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (BuildContext context, int index) {
          Destination destination = destinations[index];
        return GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute
            (builder: (_) => DestinationScreen(
            destination: destination,),
          ),
          ),
          child: Container(
            margin: EdgeInsets.all(10.0),
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 10.0,
                  child: Container(
                    height: 100.0,
                    width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius:
                        BorderRadius.circular(10.0,),
                      ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${destination.activities.length} activities',
                          style: TextStyle(fontSize: 23.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0, color: Colors.black,
                          ),
                          ),
                          Text(destination.description, style: TextStyle(color: Colors.grey[700],
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [BoxShadow(color: Colors.black26,
                    offset: Offset(0.0, 2.0,),
                    blurRadius: 6.0,
                  ),
                  ],
                ),
                  child: Stack(
                    children: <Widget>[
                      Hero(
                        tag: destination.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage(destination.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5.0,
                        bottom: 5.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text(destination.municipality, style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                          ),
                        ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
      ),
      ),
    ],
    );
  }
}


