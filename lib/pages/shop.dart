import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shop',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                ),
                Icon(Icons.menu,color: Colors.black) ],
            ),
          ],
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey[500],),
                    Container(
                      child: Text('Search',style: TextStyle(color: Colors.grey[500]),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          const Expanded(
            child: ShopGrid(),
          ),
        ],
      )

    );
  }
}
