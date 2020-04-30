import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/7630307?s=400&u=b9e395687932566075685cc630ce1ab896c04aca&v=4'),
              ),
              Text(
                'Francisco Teixeira',
                style: TextStyle(
                  fontFamily: 'Cuprum',
                  fontSize: 40.0,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SYSTEM ANALYST',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InfoCard(
                '48 9 9955 1145',
                Icons.phone,
              ),
              InfoCard(
                'franciscosft@gmail.com',
                Icons.mail,
              )
            ],
          ),
        )),
      ),
    );
  }

  Card InfoCard(String info, IconData mail) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          mail,
          color: Colors.teal,
        ),
        title: Text(
          info,
          style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: 'SourceSansPro',
              fontSize: 20.0),
        ),
      ),
    );
  }
}
