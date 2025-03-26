import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Text("Welcome!", style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
        SizedBox(height: 20,),
        Image.network("https://news.miami.edu/_assets/images-stories/2025/03/chief-rivero-retirement-hero-940x529.jpg", width: 400, ),
        SizedBox(height: 20,),
        Text("University of Miami", 
        style: TextStyle
        (color: Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold), ),
        SizedBox(height: 30,),
        Padding(padding: EdgeInsets.symmetric(horizontal:90),
         child: Text
         ("The University of Miami is one of America's top research universities located in one of the most dynamic and multicultural cities in the world!",
         style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center, ),),
        SizedBox(height: 20,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10), 
         child: Text
         ("More than 19,000 students from around the world are pursuing their academic goals at the University of Miami, a vibrant and diverse community focused on teaching and learning, the discovery of new knowledge, and service to the South Florida region and beyond.",
         style:TextStyle(fontSize: 14,color:Colors.white), textAlign: TextAlign.center, ),)
         
    
      ],
    );
  }
}