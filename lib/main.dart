import 'package:flutter/material.dart';
import 'package:wonderfulindonesia/features/places/places_screen.dart';

import 'features/category_screen.dart';
import 'features/places/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wonderful Indonesia',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
        canvasColor: Color(0xffF2F2F2),

        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          subhead: TextStyle(fontWeight: FontWeight.bold),
        )
      ),
      routes: {
        '/':(ctx) => CategoryScreen(),
        '/places': (ctx) => PlaceScreen(),
        '/detail': (ctx) => DetailScreen()
      },
    );
  }
}

