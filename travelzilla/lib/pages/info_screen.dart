import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:travelzilla/pages/information_model.dart';

class InfoScreen extends StatefulWidget {
  final Info info;

  InfoScreen({
    this.info,
  });

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List barangay1 = [];

  addBarangay(String barangay) {
    {
      barangay1.add(barangay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Hero(
                tag: widget.info.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: AssetImage(widget.info.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 45.0,
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25.0,
        ),
        Column(children: <Widget>[
          Container(
            child: Text('History and Etymology', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, letterSpacing: 1.5, color: Colors.black,),),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('${widget.info.description}', style: TextStyle(fontSize: 20.0, color: Colors.grey[800],),),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(color: Colors.black, fontSize: 23.0),
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    iconSize: 36.0,
                    elevation: 10,
                    dropdownColor: Colors.grey[600],
                    hint: Text(
                      'List of Barangay',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    items: widget.info.barangay.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0,),
              child: DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.black, fontSize: 23.0),
                icon: Icon(Icons.arrow_drop_down_outlined),
                iconSize: 36.0,
                elevation: 10,
                dropdownColor: Colors.grey[600],
                hint: Text(
                  'List of Elementary Schools',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                items: widget.info.elementary.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0),
              child: DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.black, fontSize: 23.0),
                icon: Icon(Icons.arrow_drop_down_outlined),
                iconSize: 36.0,
                elevation: 10,
                dropdownColor: Colors.grey[600],
                hint: Text(
                  'List of High schools',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                items: widget.info.highSchool.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15.0),
              child: DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.black, fontSize: 23.0),
                icon: Icon(Icons.arrow_drop_down_outlined),
                iconSize: 36.0,
                elevation: 10,
                dropdownColor: Colors.grey[600],
                hint: Text(
                  'List of College Schools',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                items: widget.info.college.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ]),
      ],
    ));
  }
}
