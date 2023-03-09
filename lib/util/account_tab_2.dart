import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(color: Colors.pinkAccent[100],),);
        });
  }
}
