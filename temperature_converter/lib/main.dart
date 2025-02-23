import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const TemperatureConverterMain());
}

// create a new stateless widget
class TemperatureConverterMain extends StatelessWidget {
  const TemperatureConverterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureConverter(),
    );
  }
}

// the actual application 
class TemperatureConverter extends StatefulWidget {
  const TemperatureConverter({super.key});

  @override
  State<TemperatureConverter> createState() => TemperatureConverterState();
}

class TemperatureConverterState extends State<TemperatureConverter> {
  //All class variables

 int groupValue =0;
 double T = 0;//temperature to convert
 double R = 0;//converted value
 String converted = "";
 double minTemp=-50;//min value for slider- change later
 double maxTemp= 100;//max value for slider -change later
 Color sliderColor = Colors.blueGrey;// Default slider colorS
 double sliderValue = 0;

 //custom methods/functions
 performConversion(int value){

 setState((){

 groupValue=value;
 
  //Formulas
  //C = (F-32) x (5/9)
  //F= (C x 9/5)/32
  //value holds the value of the checked radio button 1 or 2
  if (value==1){
    //F to C
    R = (T -32 ) * (5/9);
    converted ="$R C";
    minTemp = -50;//Celsius Range
    maxTemp = 50;
  } else if (value==2){
    //C to F
    R = (T * 1.8) + 32;
    converted ="$R F";
    minTemp = -50;
    maxTemp = 120; 
  }

  sliderValue = R.clamp (minTemp, maxTemp); 
  sliderColor = getSliderColor(R);

   print(R);
 });
 
 }

 Color getSliderColor(double temp) {
  if (groupValue == 1) { 
    // F to C
    if (temp < 10) {
      return Colors.blue; // Cold
    } else if (temp >= 10 && temp <= 30) {
      return Colors.green; // Moderate
    } else {
      return Colors.red; // Hot
    }
  } else { 
    // C to F
    if (temp < 50) { 
      return Colors.blue; // Cold
    } else if (temp >= 50 && temp <= 85) { 
      return Colors.green; // Moderate
    } else {
      return Colors.red; // Hot
    }
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Temperature Converter"),
      backgroundColor: const Color.fromARGB(255, 137, 167, 217),
    ),
    body: Padding(
      padding: EdgeInsets.all(36.0),
      child: Column(
        children: <Widget> [
          SizedBox( height: 10.0),
          TextField(
            decoration: InputDecoration(labelText: "Enter Temperature"),
            onChanged: (String value) {
              //TO DO something with value
              if(value.isNotEmpty){
                setState((){
                  T= double.parse(value);
                  performConversion(groupValue);
                });
                
              }
            },
          ), 
          SizedBox( height: 10.0),
          Row(
            children: <Widget> [
              Radio(
                value: 1, // F to C option 1
                groupValue: groupValue, 
                onChanged: (e) => { 
                  //To DO conversion logic
                  performConversion(e!)
                }),
                Text('F to C'),
                SizedBox( height: 10.0),

                Radio(
                value: 2, // C to F option 1
                groupValue: groupValue, 
                onChanged: (e) => { 
                  //To DO conversion logic
                  performConversion(e!)
                }),
                Text('C to F'),

            ],
          ),
          SizedBox( height: 10.0),
          TextButton(
            onPressed: ()=>{
              setState(() {
                //Perform clearing operations
                converted="";
                T=0;
                R=0;
                sliderValue = 0;
              })
            },
           child: Text('Clear')),
           SizedBox( height: 20.0),
           Text(converted),
           SizedBox( height: 10.0),
           Slider(
            value:sliderValue , 
           onChanged: (value)=>{
            setState(() {
                sliderValue = value;
                T = groupValue == 1
                    ? (value * 9 / 5) + 32 // Convert C to F for display
                    : (value - 32) * 5 / 9; // Convert F to C for display
                performConversion(groupValue);
              })

           },
           activeColor: sliderColor,
           min: minTemp,
            max: maxTemp, 
           ) //for challenge, values have to be dynamic, you have to change them
            



        ]
      )
    ),

    );
  }
  
}
