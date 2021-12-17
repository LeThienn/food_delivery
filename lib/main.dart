// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // xóa nhãn debug trên màn hình ứng dụng
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  // list img url
  List<String> imgUrl = [
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Color(0xFFFCFCFC),
        title: const Text(
          "Food App",
          style: TextStyle(
            color: Color(0xFFFC6A26),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),

      // now let build the body of shop app
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // thoe
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // create welcome text
            const Text(
              "Let's Eat \nOrder your Food Now",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: const Color(0x55d2d2d2),
                  borderRadius:
                      BorderRadius.circular(30.0) // circular dạng hình tròn
                  ),
              child: Row(
                children: [
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search... ",
                        border: InputBorder.none, // mấy dòng nhập
                        contentPadding: EdgeInsets.only(left: 20.0)),
                  )), // expanded chia bố cục
                  RaisedButton(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                        /* RoundedRectangleBorder: được sử dụng để tạo ra 1 đường viền hình chữ nhật góc tròn,
                      thường được sử dụng với ShapeDecoration để vẽ hình hộp với các góc tròn
                      */
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    color: const Color(0xFFFc6a26),
                  ),
                ],
              ),
            ),
            // build the food menu
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  foodCard(imgUrl[0], "Meat plate", "25"),
                  foodCard(imgUrl[1], "Meat plate", "25"),
                  foodCard(imgUrl[2], "Meat plate", "25"),
                  foodCard(imgUrl[3], "Meat plate", "25"),
                  foodCard(imgUrl[4], "Meat plate", "25"),
                  foodCard(imgUrl[5], "Meat plate", "25"),
                  foodCard(imgUrl[6], "Meat plate", "25"),
                  foodCard(imgUrl[7], "Meat plate", "25"),
                
                ],
              ),
            )
          ],
        ),
      ),

      // Now let create bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFFC6A26),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.store), title: Text('Shop Food')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }
}
