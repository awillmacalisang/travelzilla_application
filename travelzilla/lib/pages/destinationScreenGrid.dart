import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travelzilla/Assistants/assistantMethods.dart';
import 'package:travelzilla/DataHandler/appData.dart';
import 'package:travelzilla/pages/activity_model.dart';
import 'package:travelzilla/pages/destination_model.dart';
import 'package:travelzilla/widgets/Divider.dart';
import 'package:travelzilla/widgets/progressDialog.dart';


class DestinationScreenGrid extends StatefulWidget {
  final Destination destination;

  DestinationScreenGrid({ this.destination, });


  @override
  _DestinationScreenGridState createState() => _DestinationScreenGridState();
}

class _DestinationScreenGridState extends State<DestinationScreenGrid> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController newGoogleMapController;

  double bottomPaddingofMap = 0;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  List<LatLng> pLineCoordinates = [];
  Set<Polyline> polylineSet = {};

  Set<Marker> markersSet = {};
  Set<Circle> circlesSet = {};


  Position currentPosition;
  var geolocator = Geolocator();


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text(widget.destination.municipality),
      ),
      drawer: Container(
        color: Colors.white,
        width: 255.0,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 165.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top:10, bottom: 10),
                        decoration: BoxDecoration(shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DividerWidget(),
              SizedBox(height: 12.0,),

              //Drawer Body Controllers
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text( Provider.of<AppData>(context).pickUpLocation != null
                    ? Provider.of<AppData>(context).pickUpLocation.placeName
                    : "Your Current Location" , style: TextStyle(fontSize: 15.0),),
              ),
              ListTile(
                leading: Icon(Icons.directions_car_sharp),
                title: Text( Provider.of<AppData>(context).destinationInfo != null
                    ? Provider.of<AppData>(context).destinationInfo.distanceText
                    : "Total Distance"  , style: TextStyle(fontSize: 15.0),),
              ),
              ListTile(
                leading: Icon(Icons.timer_outlined),
                title: Text( Provider.of<AppData>(context).destinationInfo != null
                    ? Provider.of<AppData>(context).destinationInfo.durationText
                    : "Duration"  , style: TextStyle(fontSize: 15.0),),
              ),
              SizedBox(height: 340.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/municipalitiesGrid');

                },
                child: ListTile(
                  leading: Icon(Icons.arrow_back, size: 55.0,),
                  title: Text( "Back", style: TextStyle(fontSize: 20.0,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          _googleMap(context),
          _buildContainer(),

          //HamburgerButton for drawer
          Positioned(
            top: 45.0,
            left: 22.0,
            child: GestureDetector(
              onTap: (){
                scaffoldKey.currentState.openDrawer();
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
                  child: Icon(Icons.menu, color: Colors.black,),
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget _buildContainer() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.destination.activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.destination.activities[index];
                  return Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _boxes(
                            activity.imageUrl,
                            activity.lat,
                            activity.long,
                            activity.name,
                            activity.startTimes[0],
                            activity.startTimes[1],
                            activity.type),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  );
                })));
  }

  Widget _boxes(String _image, double lat, double long, String placeName, start,
      start2, String type){
    return GestureDetector(
      onTap: () {
        getPlaceDirection(lat,long, placeName);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x002196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(24.0),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(_image),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myDetailsContainer(
                        placeName, start, start2, type),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDetailsContainer(String placeName, start, start2,
      String type) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: Container(
            child: Text(
              placeName,
              style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          child: Text(
            '$type',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 23.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text(
            'Open: $start ',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            'Close: $start2',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _googleMap(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        mapType: MapType.hybrid,
        polylines: polylineSet,
        markers: markersSet,
        circles: circlesSet,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.destination.lat,
            widget.destination.long,
          ),
          zoom: 15,
        ),
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);

          newGoogleMapController = controller;

          setState(() {
            bottomPaddingofMap = 350.0;
          });

          locatePosition();
        },
      ),
    );
  }



  Future<void> getPlaceDirection(double lat, double long, String name) async{

    var initialPos = Provider.of<AppData>(context, listen: false).pickUpLocation;

    var pickUpLatLng = LatLng(initialPos.latitude, initialPos.longitude);
    var destinationLatLng = LatLng(lat, long);

    showDialog(context: context,
        builder: (BuildContext context) => ProgressDialog(message: "Please wait...",)
    );

    var details = await AssistantMethods.obtainPlaceDirectionDetails(pickUpLatLng, destinationLatLng, context);

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

    if(pickUpLatLng.latitude > destinationLatLng.latitude && pickUpLatLng.longitude > destinationLatLng.longitude){

      latLngBounds = LatLngBounds(southwest: destinationLatLng, northeast: pickUpLatLng);
    }
    else if(pickUpLatLng.longitude > destinationLatLng.longitude){

      latLngBounds = LatLngBounds(southwest: LatLng(pickUpLatLng.latitude, destinationLatLng.longitude), northeast: LatLng(destinationLatLng.latitude, pickUpLatLng.longitude));
    }
    else if(pickUpLatLng.latitude > destinationLatLng.latitude){

      latLngBounds = LatLngBounds(southwest: LatLng(destinationLatLng.latitude, pickUpLatLng.longitude), northeast: LatLng(pickUpLatLng.latitude, destinationLatLng.longitude));
    }
    else{
      latLngBounds = LatLngBounds(southwest: pickUpLatLng, northeast: destinationLatLng);
    }

    newGoogleMapController.animateCamera(CameraUpdate.newLatLngBounds(latLngBounds, 75));

    Marker pickUpLocMarker = Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      infoWindow: InfoWindow(title: initialPos.placeName, snippet: "My Location"),
      position: pickUpLatLng,
      markerId: MarkerId("pickUpId"),
    );
    Marker dropOffLocMarker = Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow: InfoWindow(title: name, snippet: "Destination"),
      position: destinationLatLng,
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
      center: destinationLatLng,
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

