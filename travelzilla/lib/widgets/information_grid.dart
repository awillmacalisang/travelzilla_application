import 'package:flutter/material.dart';
import 'package:travelzilla/pages/info_screen.dart';
import 'package:travelzilla/pages/information_model.dart';

class infoGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Learn More',
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
        height: 25.0,
        width: 25.0,
      ),
      Container(
        height: MediaQuery.of(context).size.height -150,
        child:
            Stack(
              children: <Widget>[
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3.0,
                      mainAxisSpacing: 2.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: infos.length,
                    itemBuilder: (BuildContext context, int index) {
                      Info info = infos[index];
                      return GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => InfoScreen(
                                    info: info,
                                  ),
                                ),
                              ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
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
                                        height: 150.0,
                                        width: 150.0,
                                        image: AssetImage(info.imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ));
                    }),
              ],
            ),
      )],
        );

  }
}

//
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// child: GridView.count(
// crossAxisCount: 2,
// children: List.generate(infos.length, (index) {
// return Card(
// margin: EdgeInsets.all(7.0),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20.0)),
// elevation: 10.0,
// child: Stack(children: <Widget>[
// Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(10.0),
// boxShadow: [
// BoxShadow(
// color: Colors.black26,
// offset: Offset(0.0, 2.0),
// blurRadius: 6.0,
// ),
// ],
// ),
// child:
