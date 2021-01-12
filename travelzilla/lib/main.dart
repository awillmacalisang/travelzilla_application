import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelzilla/DataHandler/appData.dart';
import 'package:travelzilla/pages/Municipalities.dart';
import 'package:travelzilla/pages/distance_measurer.dart';
import 'package:travelzilla/pages/home.dart';
import 'package:travelzilla/pages/loading_screen.dart';
import 'package:travelzilla/pages/municipalities_grid.dart';
import 'package:travelzilla/pages/municipalities_infoGrid.dart';





void main() async {
  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        routes: {

          '/': (context) => Loading(),

          '/home': (context) => Home(),

          '/municipalities': (context) => Municipalities(),

          '/distance': (context) => distance_measurer(),

          '/municipalitiesGrid' : (context) => municipalitiesGrid(),

          '/infoGrid' : (context) => informationGrid(),
        },
      ),
    );
  }
}





