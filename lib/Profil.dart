import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  bool _mainScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:IconButton(
        icon: Icon(Icons.location_searching),
        onPressed: () => Navigator.pushNamed(context, '/map'),
      ),
      appBar: _mainScreen ? PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                  color: Colors.white70,
                  spreadRadius: 8,
                  blurRadius: 5
              )]
          ),

          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.navigate_before, color: Colors.transparent),
                  Text("M A W J O O D",style: TextStyle(fontSize: 21, color: Colors.black)),
                  Icon(Icons.navigate_before, color: Colors.transparent),
                ],
              ),
            ),
          ),
        ),
      ) : null,

      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pharmacy Adress',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pharmacy Name',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homeProduct');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}