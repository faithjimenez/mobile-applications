import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';

void main() {
  runApp(const MyUM());
}

class MyUM extends StatelessWidget {
  const MyUM({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyUmApp(),
    );
  }
}
class MyUmApp extends StatefulWidget {
  const MyUmApp({super.key});

  @override
  State<MyUmApp> createState() => _MyUmAppState();
}

class _MyUmAppState extends State<MyUmApp> {

  int currentIndex=0;
  //"https://news.miami.edu/_assets/images-stories/2025/03/chief-rivero-retirement-hero-940x529.jpg"
//"More than 19,000 students from around the world are pursuing their academic goals at the University of Miami, a vibrant and diverse community focused on teaching and learning, the discovery of new knowledge, and service to the South Florida region and beyond."
//class collections of data
//make 6 list things for page 2 and 3 (page 2 and 3 should be lists)
//page 3, make it your own
//midterm due next thursday
var img=[
  "https://news.miami.edu/_assets/images-stories/2025/03/climate-resiliency-spotlight-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/foods-that-prevent-cancer-and-heart-disease-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/field-hockey-video-hero-790x527.jpg",
];
var titles=[
  "Climate Resiliency Spotlight",
  "Food Nutrition",
  "Field Hockey"
];
var summary = [
  "The University of Miami's Climate Resilience Institute is hosting the Resilience 365 Conference March 24-25 to kick off the inaugural Miami Climate Week.",
  "Experts in nutrition science from across the University of Miami offer their thoughts on some of the best foods to help us ward off chronic disease.",
  "More than just a team, the University of Miami's Field Hockey Club fosters camaraderie and teamwork through travel, competition, and a shared passion."
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyUM"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child:<Widget>[
          Dashboard(),
          ListView(
            children:<Widget> [
              CustomCard(img[0],titles[0],summary[0]),
              CustomCard(img[1],titles[1],summary[1]),
              CustomCard(img[2],titles[2],summary[2]),
              
            ],
          ),
          Text ("Page $currentIndex"),
          Text ("Page $currentIndex")
        ][currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState((){
            currentIndex = index;
          });
        },
        
        
        destinations: <Widget> [ 
        //first destination 0
        NavigationDestination(
          icon: Icon(Icons.dashboard),
          label: "Dashboard"),
          //secoond nav
          NavigationDestination(
          icon: Icon(Icons.pages),
          label: "Page 1"),
          //third nav
          NavigationDestination(
          icon: Icon(Icons.pages),
          label: "Page 2"),
          //fourth nav
          NavigationDestination(
          icon: Icon(Icons.pages),
          label: "Page 3"),
      ]),
      
    ); 
  }
}
