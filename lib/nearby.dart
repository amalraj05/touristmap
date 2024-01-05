import 'package:flutter/material.dart';

class nearly extends StatefulWidget {
  const nearly({super.key});

  @override
  State<nearly> createState() => _nearlyState();
}

class _nearlyState extends State<nearly> {
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
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("images/varanasi.jpg",),fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140,right: 70),
                        child: Text("Varanasi",style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                            Text(" UttarPradesh",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 10,),
                            Text("\$\$\$",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                    ],
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
                    image: AssetImage("images/goldentemple.jpeg",),fit: BoxFit.cover),
                ),
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140,right: 40),
                        child: Text("GoldenTemple",style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                            Text(" Amritsar",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 30,),
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
                    image: AssetImage("images/mysore.jpg",),fit: BoxFit.cover),
                ),
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140,right: 50),
                        child: Text("Mysore Palace",style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.white,size: 20,),
                            Text(" Karnataka",style: TextStyle(color: Colors.white),),
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