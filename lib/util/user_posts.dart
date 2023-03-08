import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //profile photo

              Row(
                children: [
                  Container(
                    height: 40,
                    width:  40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const Icon(Icons.more_vert)
            ],),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey[300],),

        //below the post-button and icons

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row( children: const [
               Icon(Icons.favorite),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12),
                 child: Icon(Icons.chat_bubble_outline_outlined),
               ),
               Icon(Icons.share),
             ],),
              const Icon(Icons.bookmark),
            ],
          ),
        ),

        //Liked by

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text('mark',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text('others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //caption

        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 8),
          child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'david ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  TextSpan(text: ' Life is a beautiful journey, and I\'m grateful for every moment. I\'m constantly learning, growing, and exploring new opportunities.'),],
              )),
        ),

        //comments


      ],
    );
  }
}
