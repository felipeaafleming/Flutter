import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fcgh14-1.fna.fbcdn.net/v/t1.0-9/80890445_2969506299740403_1539626126417068032_n.jpg?_nc_cat=109&_nc_sid=85a577&_nc_ohc=bfRH6nDsbWEAX-JMfRu&_nc_ht=scontent.fcgh14-1.fna&oh=a008875335e5a1dae9ba87233b7a261f&oe=5EBE55FE"),
                backgroundColor: Colors.blue,
                radius: 100.0,
              ),
              Text(
                "Felipe Fleming",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 20.00,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "Brazil, São Paulo",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "SourceSansPro",
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+5519988354292",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "SourceSansPro",
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "felipe@fleming.com",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "SourceSansPro",
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
