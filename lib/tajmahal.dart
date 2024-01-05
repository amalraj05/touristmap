import 'package:flutter/material.dart';
import 'package:touristmap/secondpage.dart';

class taj extends StatefulWidget {
  const taj({super.key});

  @override
  State<taj> createState() => _tajState();
}

class _tajState extends State<taj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 450,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.pink,
              image: DecorationImage(image: AssetImage("images/tajmaha.jpg",),fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)
              )
            ),

          ),
          
              Padding(
                padding: const EdgeInsets.only(top: 300,left: 20),
                child: Text("Taj",style: TextStyle(color: Colors.white,fontSize: 30),),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 340,left: 20),
            child: Text("Mahal",style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
        
          Padding(
            padding: const EdgeInsets.only(top: 400,left: 20),
            child: Row(
              children: [
                Text("\$1,890",style: TextStyle(color: Colors.white,fontSize: 17),),
                Text("/person",style: TextStyle(color: Colors.white54,fontSize: 13),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400,left: 270),
            child: Row(
              children: [
                Icon(Icons.location_on,color: Colors.white,),
                Text("Agra",style: TextStyle(color: Colors.white,fontSize: 18),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470,left: 30),
            child: Row(
              children: [
                Text("4.9",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
                SizedBox(width: 80,),
                Text("7Km",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
                SizedBox(width: 60,),
                Text("20.c",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510,left: 20),
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                Text("6K Review",style: TextStyle(color: Colors.black38,fontSize: 13),),
                SizedBox(width: 45,),
                Icon(Icons.linear_scale_rounded,color: Colors.red[300],),
              Text("Direction",style: TextStyle(color: Colors.black38,fontSize: 13),),
              SizedBox(width: 40,),
              Icon(Icons.sunny,color: Colors.yellow,),
              Text("Sunny",style: TextStyle(color: Colors.black38,fontSize: 13),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550,left: 20),
            child: Text("About Taj Mahal'",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600,left: 20,right: 20),
            child: Text("King menes founded the capital of ancient Egypt at White Walls(later known as memphis), in the north, near the apex of the nile river delta.the caiptal would grow into a gfreat metropolis that dominated",
            style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730,left: 20
            ),
            child: SizedBox(
              width: 310,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[300]
                ),
                onPressed: (){},
                 child: Text("Book Now",style: TextStyle(color: Colors.white),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 300),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.favorite,color: Colors.orange,size: 25,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 20),
            child: InkWell(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => second()),
  );
},
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.arrow_back_ios_new,size: 20,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}