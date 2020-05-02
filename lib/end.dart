import 'package:flutter/material.dart';

class End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you for update me',
                style: TextStyle(
                    fontSize: 34.0, fontWeight: FontWeight.normal),
//                style: Theme.of(context).textTheme.display4,
              ),


              SizedBox(
                height: 24,
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text('BACK'),
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
