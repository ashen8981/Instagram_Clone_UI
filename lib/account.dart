import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/util/account_tab_1.dart';
import 'package:instagram_clone_ui/util/account_tab_2.dart';
import 'package:instagram_clone_ui/util/account_tab_3.dart';
import 'package:instagram_clone_ui/util/account_tab_4.dart';
import 'package:instagram_clone_ui/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 20),
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
            Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Ashen',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('develop mobile apps',style: TextStyle(fontWeight: FontWeight.bold),),
              ],),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text('Edit Profile'),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text('Add Tools'),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text('Insights'),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                )
              ],
            ),
           //stories
            Row(
              children: [
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 2'),
                BubbleStories(text: 'story 3'),
                BubbleStories(text: 'story 4'),
              ],
            ),
            const TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined,)),
              Tab(icon: Icon(Icons.video_call,)),
              Tab(icon: Icon(Icons.shopping_bag_outlined,)),
              Tab(icon: Icon(Icons.person,)),
            ]),
            Expanded(child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ]))
          ],
        ),
      ),
    );
  }
}
