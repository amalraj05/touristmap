import 'package:flutter/material.dart';
import 'package:touristmap/nearby.dart';
import 'package:touristmap/tabbar1.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  get height => null;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(backgroundImage: AssetImage("images/neymar.jpg",),),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 130),
          child: Column(
            children: [
              Text("Hi lyoro Tims",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.orange,size: 15,),
                  Text("   kerala,india",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black38),)
                ],
              ),
              
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(Icons.notification_add,color: Colors.orange,),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 175,
                  width: 370,
                  color: Colors.white,
                  child: Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Explore",style: TextStyle(color: Colors.black,fontSize: 35),),
                           Text("India",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text("Discover the best spots around india",
                                        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black38),),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 350,height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 0,color: Colors.black)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7,left: 25),
                            child: Text("Search around you",style: TextStyle(color: Colors.black45,fontSize: 18),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
                TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.orange,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Landmark",
                ),
                Tab(
                  text: "Nearby",
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  tabbar1(),
                  nearly(),
                ],
                controller: _tabController,
              ),
            ),
                Padding(
                  padding: const EdgeInsets.only(right: 150,bottom:150 ),
                  child: Text("Popular Categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                )
                  ],
      )),
      Padding(
        padding: const EdgeInsets.only(top: 520,left: 20),
        child: Row(
          children: [
            Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/calender.jpg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50)
                     ),
                    ),
                    SizedBox(width: 27,),
                    Container(
                                  width: 60,height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("images/hotel.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                SizedBox(width: 27,),
                                Container(
                                  width: 60,height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("images/malls1.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                SizedBox(width: 27,),
                                Container(
                                  width: 60,height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("images/beach.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 600,left: 20),
        child: Row(
          children: [
            Text("Events"),
            SizedBox(width: 50,),
            Text("Hotels"),
            SizedBox(width: 50,),
            Text("Malls"),
            SizedBox(width: 50,),
            Text("Beach"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 130,left: 300),
        child: Icon(Icons.search,size: 30,),
      ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white70,
        onDestinationSelected: (int index) {
           
          },
          selectedIndex: 0,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home),
           label: ""),
           NavigationDestination(icon: Icon(Icons.explore),
            label: ""),
            NavigationDestination(icon: Icon(Icons.bookmark_outlined),
            label: ""),
             NavigationDestination(icon: Icon(Icons.settings),
            label: "")
        ])
    );
  }
}
