import 'package:datum/services/database.dart';
import 'package:datum/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:datum/models/user.dart';


class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final categories = DatabaseService(uid : user.uid).categoriesData ?? {};// user.
   // var keys = categories.keys.toList();
    //var val = categories[keys[index]];


    return ListView.builder(
      itemCount: categories.length,
        itemBuilder: (context, index){
          return categories[keys[index]] ? getDataFromFirebase(context, categories[index]) : SizedBox();
        });
  }
}
