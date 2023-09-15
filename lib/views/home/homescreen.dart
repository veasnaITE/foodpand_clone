import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpanda_clone/views/home/widgets/mydrawer_cus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
  new GlobalKey<ScaffoldState>();
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
          onPressed: (){
            _scaffoldKey.currentState!.openDrawer();
          },
        icon:Icon(Icons.menu,size: 30,) ,),
        title: Row(
          children: [
            RichText(
              text:TextSpan(
                children: [
                  TextSpan(text: "2 St 562\n",style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  )),
                  TextSpan(text: "Phom Penh"),
                ],
              ),
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.card_travel))
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
            backgroundColor: Colors.pink[400],
            flexibleSpace: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search),
                      SizedBox(width: 10,),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Food Delivery\n",style:
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black87
                                )),
                                TextSpan(text: "Order food you love",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black54
                                    )),
                              ]
                            )),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                              child: Image.asset('assets/images/image 8.png'))
                        ],
                      ),
                    ),
                  )
                ],
               ),
             ),
           )
          ),
        ],
      ),
    );

  }
}


