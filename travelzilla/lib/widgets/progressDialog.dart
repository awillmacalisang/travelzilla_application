import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {

  String message;
  ProgressDialog({this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        margin: EdgeInsets.all(5.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(width: 3.0,),
              CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
              SizedBox(width: 18.0,),
              Text(
                message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
