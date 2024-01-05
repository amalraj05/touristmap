import 'package:flutter/material.dart';
import 'package:touristmap/tajmahal.dart';

class tabbar1 extends StatefulWidget {
  const tabbar1({super.key});

  @override
  State<tabbar1> createState() => _tabbar1State();
}

class _tabbar1State extends State<tabbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  // Within the `FirstRoute` widget
                onTap : () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => taj()),
                 );
                },
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("images/tajmahal.jpg",),fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 140,right: 70),
                          child: Text("Taj Mahal",style: TextStyle(color: Colors.white),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                              Text(" Agra",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 60,),
                              Text("\$\$\$",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/tour.4.jpg",),fit: BoxFit.cover),
                ),
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140,right: 70),
                        child: Text("India Gate",style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                            Text(" New Delhi",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 25,),
                            Text("\$\$\$",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/pexels-fuzail-ahmad-18291210 (1).jpg",),fit: BoxFit.cover),
                ),
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140,right: 70),
                        child: Text("Qutub Minar",style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                            Text(" New delhi",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 25,),
                            Text("\$\$\$",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
    );
  }
}