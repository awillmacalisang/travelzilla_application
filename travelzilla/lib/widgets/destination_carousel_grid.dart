import 'package:flutter/material.dart';
import 'package:travelzilla/pages/destinationScreenGrid.dart';
import 'package:travelzilla/pages/destination_model.dart';
import 'package:travelzilla/pages/destination_screen.dart';

class DestinationCarouselGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Municipalities',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/municipalities');
              },
              child: Text(
                'See Less',
                style: TextStyle(
                    color: Colors.blue[200],
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15.0,
        width: 15.0,
      ),
        Container(
            height: MediaQuery.of(context).size.height -150.0,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                ),
                scrollDirection: Axis.vertical,
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  Destination destination = destinations[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DestinationScreenGrid(
                          destination: destination,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 1.0,
                            child: Container(
                              height: 75.0,
                              width: 160.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '${destination.activities.length} activities',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    Text(
                                      destination.description,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    height: 120.0,
                                    width: 150.0,
                                    image: AssetImage(destination.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 5.0,
                                  bottom: 5.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        destination.municipality,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
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
                }),
          ),
    ]);
  }
}
