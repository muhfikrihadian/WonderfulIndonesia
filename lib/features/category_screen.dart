import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonderfulindonesia/components/category_screen.dart';
import 'package:wonderfulindonesia/models/dummy_data.dart';

class CategoryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wonderful Indonesia"),
      ),

      body: GridView(
        padding: EdgeInsets.all(15),
        children: CATEGORIES_DUMMY_DATA.map((cat) => ListCategory(cat.id, cat.title, cat.description, cat.image)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,

        ),
      ),
    );
  }
}