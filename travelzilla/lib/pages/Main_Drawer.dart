import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
      color: Colors.grey[600],
            child: Center(
              child: Column(
                children: <Widget>[
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
                  Text('Travelzilla',style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Times New Roman',
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0)),
                ],
              ),
            ),
      ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('List of Municipalities', style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/municipalities');
              },
            ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.directions_rounded),
            title: Text('Distance Measurer', style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/distance');
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About the App', style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              showAboutDialog(context: context,
              applicationIcon: Container(
                  width: 100,
                  height: 100,
                decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.fill),
                ),
              ),
                  applicationName: 'About the App',
                  applicationVersion: '0.0.1',
                  applicationLegalese: '© Awill Jay E. Macalisang',
                  children: <Widget> [
                    SizedBox(
                      height: 20,
                    ),
                    Text('App Information'),
                    Text('App Privacy Policy'),
                    Text('App Terms of Service'),
                  ]
              );
            },
          ),
        ],
      )
    );
  }
}
