import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travelzilla/Assistants/assistantMethods.dart';
import 'package:travelzilla/DataHandler/appData.dart';
import 'package:travelzilla/Models/directionDetails.dart';
import 'package:travelzilla/pages/Main_Drawer.dart';
import 'package:travelzilla/pages/searchScreen.dart';
import 'package:travelzilla/widgets/Divider.dart';
import 'package:travelzilla/widgets/progressDialog.dart';

class distance_measurer extends StatefulWidget {
  @override
  _distance_measurerState createState() => _distance_measurerState();
}

class _distance_measurerState extends State<distance_measurer> with TickerProviderStateMixin{

  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();



  Position currentPosition;
  var geolocator = Geolocator();
  double bottomPaddingofMap = 0;

  List<LatLng> pLineCoordinates = [];
  Set<Polyline> polylineSet = {};

  Set<Marker> markersSet = {};
  Set<Circle> circlesSet = {};


  double rideDetailsContainer = 0;
  double searchContainerHeight = 250.0;

  bool drawerOpen = true;

  resetApp(){
    setState(() {
      drawerOpen = true;
      searchContainerHeight = 250.0;
      rideDetailsContainer = 0;
      bottomPaddingofMap = 250.0;

      polylineSet.clear();
      markersSet.clear();
      circlesSet.clear();
      pLineCoordinates.clear();

    });

    locatePosition();
  }

  void displayRideDetailsContainer() async {

    await getPlaceDirection();

    setState(() {

      searchContainerHeight = 0;
      rideDetailsContainer = 200.0;
      bottomPaddingofMap = 220.0;
      drawerOpen = false;

    });
  }


  void locatePosition() async
  {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition = new CameraPosition(target: latLatPosition, zoom: 14.0);
    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    String address = await AssistantMethods.searchCoordinateAddress(position, context);
    print("This is your Address :: " + address);
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Distance Measurer'),
      ),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingofMap),
            myLocationButtonEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            polylines: polylineSet,
            markers: markersSet,
            circles: circlesSet,
            myLocationEnabled: true,
            mapType: MapType.hybrid,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;

              setState(() {
                bottomPaddingofMap = 265.0;
              });

              locatePosition();
            },
          ),

          //hamburgerButton for drawer

          Positioned(
            top: 38.0,
            left: 22.0,
            child: GestureDetector(
              onTap: (){
                if(drawerOpen){
                  scaffoldkey.currentState.openDrawer();
                }
                else{
                  resetApp();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      spreadRadius: 0.5,
                      offset: Offset(
                        0.7,
                        0.7,
                      ),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    (drawerOpen) ? Icons.menu : Icons.close,
                    color: Colors.black,
                  ),
                  radius: 20.0,
                ),
              ),
            ),
          ),

          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: AnimatedSize(
              vsync: this,
              curve: Curves.bounceIn,
              duration: new Duration(milliseconds: 180),
              child: Container(
                height: searchContainerHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 16.0,
                      spreadRadius: 0.5,
                      offset: Offset(0.7, 0.7),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Hi there, ",
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Where do you want to go? ",
                        style: TextStyle(
                            fontSize: 26.0,
                            fontFamily: 'Brand-Bold',
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () async {
                          
                          var res = await Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));

                          if(res == "obtainDirection"){

                            displayRideDetailsContainer();
                          }
                        },
                        child: Container(
                          width: 400.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              5.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 6.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.7, 0.7),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:53.0),
                                  child: Text(
                                    'Search Location',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      DividerWidget(),
                      SizedBox(
                        height: 10.0,
                      ),

                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey, size: 30.0,),
                          SizedBox(width: 12.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Provider.of<AppData>(context).pickUpLocation != null
                                    ? Provider.of<AppData>(context).pickUpLocation.placeName
                                    : "Your Current Location" , style: TextStyle(fontSize: 11.0, color: Colors.black, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(height: 4.0,),
                              Text("This is your Current location", style: TextStyle(color: Colors.black54, fontSize: 15.0),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 15.0,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: AnimatedSize(
              vsync: this,
              curve: Curves.bounceIn,
              duration: new Duration(milliseconds: 180),
              child: Container(
                height: rideDetailsContainer,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 16.0,
                      spreadRadius: 0.5,
                      offset: Offset(0.7, 0.7),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60.0,
                        color: Colors.tealAccent[100],
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.directions_car_sharp, size: 50.0,),
                              SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Distance", style: TextStyle(fontSize: 22.0, fontFamily: "Brand-Bold", fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    Provider.of<AppData>(context).destinationInfo != null
                                        ? Provider.of<AppData>(context).destinationInfo.distanceText
                                        : "Total Distance" , style: TextStyle(fontSize: 18.0, color: Colors.grey[600], fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20.0,),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Icon(Icons.timer_outlined, size: 40.0, color: Colors.black54,),
                            SizedBox(width: 16.0,),
                            Text("Time Duration", style: TextStyle(fontSize: 22.0, fontFamily: "Brand-Bold", fontWeight: FontWeight.w900),),
                            SizedBox(width: 6.0,),
                            Text(
                              Provider.of<AppData>(context).destinationInfo != null
                                  ? Provider.of<AppData>(context).destinationInfo.durationText
                                  : "Duration" , style: TextStyle(fontSize: 18.0, color: Colors.grey[600], fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 24.0,),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getPlaceDirection() async{

    var initialPos = Provider.of<AppData>(context, listen: false).pickUpLocation;
    var finalPos = Provider.of<AppData>(context, listen: false).dropOffLocation;

    var pickUpLatLng = LatLng(initialPos.latitude, initialPos.longitude);
    var dropOffLatLng = LatLng(finalPos.latitude, finalPos.longitude);
    
    showDialog(context: context,
      builder: (BuildContext context) => ProgressDialog(message: "Please wait...",)
    );

    var details = await AssistantMethods.obtainPlaceDirectionDetails(pickUpLatLng, dropOffLatLng, context);

    
    Navigator.pop(context);

    print("This is Encoded Points :: ");
    print(details.encodedPoints);
    print("This is distance :: ");
    print(details.distanceText);
    print("This is duration :: ");
    print(details.durationText);
    print("This is distance :: ");



    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> decodedPolyLinePointsResult = polylinePoints.decodePolyline(details.encodedPoints);

    pLineCoordinates.clear();

    if(decodedPolyLinePointsResult.isNotEmpty){

      decodedPolyLinePointsResult.forEach((PointLatLng pointLatLng) {
        pLineCoordinates.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));

      });
    }

    polylineSet.clear();
   setState(() {

     Polyline polyline = Polyline(
       color: Colors.red,
       polylineId: PolylineId("PolylineID"),
       jointType: JointType.round,
       points: pLineCoordinates,
       width: 5,
       startCap: Cap.roundCap,
       endCap: Cap.roundCap,
       geodesic: true,
     );

     polylineSet.add(polyline);
   });

   LatLngBounds latLngBounds;

   if(pickUpLatLng.latitude > dropOffLatLng.latitude && pickUpLatLng.longitude > dropOffLatLng.longitude){

     latLngBounds = LatLngBounds(southwest: dropOffLatLng, northeast: pickUpLatLng);
   }
   else if(pickUpLatLng.longitude > dropOffLatLng.longitude){

     latLngBounds = LatLngBounds(southwest: LatLng(pickUpLatLng.latitude, dropOffLatLng.longitude), northeast: LatLng(dropOffLatLng.latitude, pickUpLatLng.longitude));
   }
   else if(pickUpLatLng.latitude > dropOffLatLng.latitude){

     latLngBounds = LatLngBounds(southwest: LatLng(dropOffLatLng.latitude, pickUpLatLng.longitude), northeast: LatLng(pickUpLatLng.latitude, dropOffLatLng.longitude));
   }
   else{
     latLngBounds = LatLngBounds(southwest: pickUpLatLng, northeast: dropOffLatLng);
   }

   newGoogleMapController.animateCamera(CameraUpdate.newLatLngBounds(latLngBounds, 70));

   Marker pickUpLocMarker = Marker(
     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
     infoWindow: InfoWindow(title: initialPos.placeName, snippet: "My Location"),
     position: pickUpLatLng,
     markerId: MarkerId("pickUpId"),
   );
    Marker dropOffLocMarker = Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow: InfoWindow(title: finalPos.placeName, snippet: "Destination"),
      position: dropOffLatLng,
      markerId: MarkerId("dropOffId"),
    );

    setState(() {
      markersSet.add(pickUpLocMarker);
      markersSet.add(dropOffLocMarker);
    });

    Circle pickUpLocCircle = Circle(
      fillColor: Colors.yellow,
      center: pickUpLatLng,
      radius: 12,
      strokeWidth: 4,
      strokeColor: Colors.yellowAccent,
      circleId: CircleId("pickUpId"),
    );
    Circle dropOffLocCircle = Circle(
      fillColor: Colors.red,
      center: dropOffLatLng,
      radius: 12,
      strokeWidth: 4,
      strokeColor: Colors.redAccent,
      circleId: CircleId("dropOffId"),
    );

    setState(() {
      circlesSet.add(pickUpLocCircle);
      circlesSet.add(dropOffLocCircle);
    });

  }
}
