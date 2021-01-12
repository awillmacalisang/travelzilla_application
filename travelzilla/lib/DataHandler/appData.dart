import 'package:flutter/cupertino.dart';
import 'package:travelzilla/Models/address.dart';
import 'package:travelzilla/Models/directionDetails.dart';
import 'package:travelzilla/pages/destination_model.dart';

class AppData extends ChangeNotifier{

  Address pickUpLocation, dropOffLocation;
  DirectionDetails destinationInfo;
  Destination destination;

  void updatePickUpLocationAddress(Address pickUpAddress){

    pickUpLocation = pickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Address dropOffAddress){

    dropOffLocation = dropOffAddress;
    notifyListeners();
  }

  void displayDestinationInfo(DirectionDetails destInfo){

    destinationInfo = destInfo;
    notifyListeners();
  }

  void getDestinationInfo(Destination getDestination){
    destination = getDestination;
    notifyListeners();
  }

}