
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//void main() => runApp(new SliderDemo());

class MyCatalog extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<MyCatalog> {
  double _diffLevel = 2;
  var listOfWords = [
    'bavette',
    'gans',
    'sweger camel',
    'sweger merit',
    'sweger light'
  ];

  var word = 'bavette';
  @override
  Widget build(BuildContext context) {
    bool _mainScreen = true;
    return Scaffold(
      bottomNavigationBar:IconButton(
      icon: Icon(Icons.account_box),
      onPressed: () => Navigator.pushNamed(context, '/profil'),
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

      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 50,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(60.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Card(
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          word,
                          style: TextStyle(
                              fontSize: 34.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),

                  Slider.adaptive(
                    inactiveColor: Colors.black,
                    activeColor:Colors.black,
                    value: _diffLevel,
                    onChanged: (double newValue) {
                      setState(() {
                        _diffLevel = newValue;
                      });
                    },
                    min: 0,
                    max: 1000,
                    divisions: 5,
                    label: _diffLevel.toString(),




                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Unit Quantity",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Spacer(),
                      Text("Thanks for make me updated",
                          style: TextStyle(color: Colors.grey.shade700)),
                    ],
                  ),
                  SizedBox(

                    height: 50,
                  ),
                  Center(
                    child: RaisedButton(
                      textTheme: ButtonTextTheme.primary,
                      elevation: 1.0,
                      color: Colors.white30,
                      textColor: Colors.black54,
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      onPressed: () {
                        setState(() {
//                          var randomNumber = new Random().nextInt(9);
                          var num = listOfWords.length;
                          for (var i = 0; i < num ; i++) {
                          word = listOfWords[i];}
                          Navigator.pushReplacementNamed(context, '/end');

                          _diffLevel = 3;
                        });

                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

