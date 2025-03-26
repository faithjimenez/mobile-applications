import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';
import 'photo_gallery.dart'; 

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
  "https://news.miami.edu/_assets/images-stories/2025/03/black-box-theatre-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/sam-palmer-shields-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg",
  //PAGE 2 - RESEARCH
  "https://news.miami.edu/_assets/images-stories/2025/01/boiling-river-peru-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/01/autism-research-on-bilinguals-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/health-communications-grant-shark-tank-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/foods-that-prevent-cancer-and-heart-disease-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/st-patricks-day-hero-790x527.jpg",
  "https://news.miami.edu/_assets/images-stories/2025/03/online-trafficking-of-endangered-species-hero-790x527.jpg",

];
var titles=[
  "Climate Resiliency Spotlight",
  "Food Nutrition",
  "Field Hockey",
  "Black Box Theatre",
  "Sam Palmer Shields",
  "FEC",
  //PAGE 2
  "Boiling River in the Amazon",
  "The Benefits of Speaking Multiple Languages",
  "School of Communication and Miller School of Medicine Team Up for Innovative Projects",
  "Foods to Fortify",
  "Born in the USA: St. Patrick’s Day",
  "Dangers That Lurk Beyond the Wilds",

];
var summary = [
  "The University of Miami's Climate Resilience Institute is hosting the Resilience 365 Conference March 24-25 to kick off the inaugural Miami Climate Week.",
  "Experts in nutrition science from across the University of Miami offer their thoughts on some of the best foods to help us ward off chronic disease.",
  "More than just a team, the University of Miami's Field Hockey Club fosters camaraderie and teamwork through travel, competition, and a shared passion.",
   "Twelve theatre arts students will perform five original musicals as a grand opening for the University’s new Theatre Arts Building.",
  "The University of Miami’s Launch Pad director helps budding entrepreneurs balance their big dreams with effective strategies to access resources and navigate the rocky business world.",
  "The week’s events, organized by the Federación de Estudiantes Cubanos, includes a movie screening of “Hijos de la Diaspora” that explores the lives of the children of Cuban exiles.",
  //PAGE 2
  "New research from a team of tropical biologists forecasts some of the changes that may occur in the Amazon rainforest as temperatures rise due to climate change.",
  "New psychology research indicates that multilingual children may have enhanced executive function and perspective taking skills.",
  "Funded by the Mitchell Wolfson Foundation, the interdisciplinary research studies enhance the academic mission of both schools.",
  "Experts in nutrition science from across the University of Miami offer their thoughts on some of the best foods to help us ward off chronic disease.",
  "A University of Miami professor who specializes in Irish culture traces the roots of the popular holiday to Irish émigrés who fled the “Great Hunger” in their homeland to seek a new start in America.",
  "Using a new web crawler they developed, two University of Miami researchers and others conducted an extensive study on the scale and scope of the online trade of endangered species.",



];

final List<String> pic = [
    "https://news.miami.edu/_assets/images-stories/2025/02/guilio-palummieri-runner-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/alize-carrere-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/singing-valentines-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/lowe-early-americana-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/commuter-week-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/mullings-family-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/golden-age-of-the-jews-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/xrday-2025-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/scholarship-donor-celebration-2025-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/tropic-bound-book-tour-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/02/how-to-spot-ai-images-hero-790x527.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("MyUM",
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child:<Widget>[
          Dashboard(),
          ListView(
            children:<Widget> [
              SizedBox(height: 15,),
                Text("  News", style: TextStyle(color:Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold, ),),
                SizedBox(height: 15,),
              CustomCard(img[0],titles[0],summary[0]),
              SizedBox(height: 10,),
              CustomCard(img[1],titles[1],summary[1]),
              SizedBox(height: 10,),
              CustomCard(img[2],titles[2],summary[2]),
              SizedBox(height: 10,),
              CustomCard(img[3],titles[3],summary[3]),
              SizedBox(height: 10,),
              CustomCard(img[4],titles[4],summary[4]),
              SizedBox(height: 10,),
              CustomCard(img[5],titles[5],summary[5]),
              
            ],
          ),
          ListView(
            children:<Widget> [
              SizedBox(height: 15,),
                Text("  Research", style: TextStyle(color:Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold ),),
                SizedBox(height: 15,),
              CustomCard(img[6],titles[6],summary[6]),
              SizedBox(height: 10,),
              CustomCard(img[7],titles[7],summary[7]),
              SizedBox(height: 10,),
              CustomCard(img[8],titles[8],summary[8]),
              SizedBox(height: 10,),
              CustomCard(img[9],titles[9],summary[9]),
              SizedBox(height: 10,),
              CustomCard(img[10],titles[10],summary[10]),
              SizedBox(height: 10,),
              CustomCard(img[11],titles[11],summary[11]),
              
            ],
          ),
          PhotoGallery(picUrls: pic),
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
          label: "News"),
          //third nav
          NavigationDestination(
          icon: Icon(Icons.pages),
          label: "Research"),
          //fourth nav
          NavigationDestination(
          icon: Icon(Icons.pages),
          label: "Gallery"),
      ]),
      
    ); 
  }
}
