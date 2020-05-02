//// Copyright 2019 The Flutter team. All rights reserved.
//// Use of this source code is governed by a BSD-style license that can be
//// found in the LICENSE file.
//
//import 'package:flutter/material.dart';
////import 'package:gallery/l10n/gallery_localizations.dart';
//
//
//
//
//class MyCatalog extends StatefulWidget {
//  @override
//  _SliderDemoState createState() => _SliderDemoState();
//}
//
//
//
//class _SliderDemoState extends State<MyCatalog> {
//  double _diffLevel = 2;
//
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("Sliders (Guess the Word's level)"),
//        ),
//        body: Stack(
//          children: <Widget>[
//
//          Slider.adaptive(
//            value: _diffLevel.toDouble(),
//            onChanged: (double newValue) {
//              setState(() {
//                _diffLevel = newValue;
//              });
//            },
//            min: 1,
//            max: 3,
//            divisions: 2,
//            label: _diffLevel.toString(),
//          ),
//          ],
//          );
//    }
//}
//
//
