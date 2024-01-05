import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:touristmap/secondpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Builder(
            builder: (context) {
              final double height = MediaQuery.of(context).size.height;
              return CarouselSlider(
                options: CarouselOptions(
                  height: height,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false
                ),
                items: imglist.map( (item) => Container(
                  child: Center(
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      height: height,
                    )),
                ))
                .toList(),
              );
            }
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90,left: 130),
            child: Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20,),
                color: Colors.white24
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.home,color: Colors.white,),
                    Text(" Omevile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600,left: 70),
            child: Text("A destination \n Called Home",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730,left: 20),
            child: SizedBox(
              width: 320,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange[300]
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => second(),));
                },
               child: Text("Get Started",style: TextStyle(color: Colors.white),)),
            ),
          )
        ]
      ),
    );
  }
}
final List imglist = [
  "images/pexels-fuzail-ahmad-18291210 (1).jpg",
  "images/tour.2.jpg",
  "images/tour.4.jpg"
];