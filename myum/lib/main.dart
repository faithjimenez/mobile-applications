import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyUM"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child:<Widget>[
          Text("Dashboard"),
          Text ("Page $currentIndex"),
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
