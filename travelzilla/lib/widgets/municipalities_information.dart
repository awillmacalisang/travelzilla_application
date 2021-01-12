import 'package:flutter/material.dart';
import 'package:travelzilla/pages/info_screen.dart';
import 'package:travelzilla/pages/information_model.dart';


class MunicipalitiesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Learn More', style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5, color: Colors.white,
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/infoGrid');
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
            itemCount: infos.length,
            itemBuilder: (BuildContext context, int index) {
              Info info = infos[index];
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute
                  (builder: (_) => InfoScreen(
                  info: info,),
                ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
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
                              tag: info.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 200.0,
                                  width: 200.0,
                                  image: AssetImage(info.imageUrl),
                                  fit: BoxFit.cover,
                                ),
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
