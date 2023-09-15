import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpanda_clone/views/home/widgets/foodbanner.dart';
import 'package:foodpanda_clone/views/home/widgets/mydrawer_cus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.pink[400],
        ),
        backgroundColor: Colors.pink[400],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        title: Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "2 St 562\n",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: "Phom Penh"),
                ],
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.card_travel))
          ],
        ),
      ),
      drawer: MyDrawerCus(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 100,
            pinned: false,
            // snap: true,
            floating: false,
            backgroundColor: Colors.pink[400],
            flexibleSpace: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Search for shops & restaurants")
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FoodBanner(),
                  ),
                  Row(
                    children: [
                      FoodBanner(),
                      Expanded(child:
                      Column(
                        children: [
                          FoodBanner(),
                          SizedBox(height: 20,),
                          FoodBanner(),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                color: Colors.red,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Image.asset('assets/images/Rectangle 13.png'),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 30,
                            child: Text('15 mn',style: TextStyle(
                              backgroundColor: Colors.white,
                            ),),
                          )
                        ],
                      ),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text: 'Starbucks Fun Mall Tk\n'),
                          TextSpan(text: 'Starbucks Fun Mall Tk\n'),
                        ]
                      ))
                    ],
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
