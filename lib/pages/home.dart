import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/util/bubble_stories.dart';
import '../util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'ashen',
    'warner',
    'david',
    'ariana',
    'justin',
    'Mark',
    'ITUM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Instagram',
            style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add,color: Colors.black,),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite,color: Colors.black),
                ),
                Icon(Icons.share,color: Colors.black) ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ///stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context,index){
              return BubbleStories(text: people[index]);
            })
          ),
          ///posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: ((context, index) {
              return UserPosts(
              name: people[index],
              );
            })),
          )
        ],
      ),
    );
  }
}
