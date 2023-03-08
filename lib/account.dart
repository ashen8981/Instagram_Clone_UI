import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle
                  ),
                ),

                //number of followers,posts,following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      children:const  [
                        Text('250',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children:const  [
                        Text('150',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        Text('Following'),
                      ],
                    ),
                    Column(
                      children:const  [
                        Text('143',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        Text('Followers'),
                      ],
                    ),
                  ],),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
