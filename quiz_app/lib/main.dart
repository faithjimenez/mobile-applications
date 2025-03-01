import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quiz()
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}



class _QuizState extends State<Quiz> {
  //class variables
  int groupValue=2;
  //currentQuestion is used to iterate the array/list
  int currentQuestion =0; 
  //questions[currentQuestion]
  //keep track of the score
  int score= 0;

  var questions =['Question 1', 'Question 2', 'Question 3'];
  var answers =[0,0,1];
  //display correct/incorrect
  String result="";



  void checkAnswer(int answer){
    print ('User answered $answer');

    if(answers[currentQuestion]==answer){
      print ("Correct");
      score++;
      result ="Correct!";
    } else{
      print("incorrect");
      result="Incorrect!";
    }
    //if answer is true or false set the score and show the result correct/incorrect
    //set the groupValue to activate the radio

    setState((){
      groupValue = answer;
    });


  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 168, 223),
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 123, 35, 218), title: Text ("Quiz App"),),
      body: Padding(padding: EdgeInsets.all(36.6),
      child:Column(
      children:<Widget>[
        Text(
          questions[currentQuestion],
          style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold,),

          ),
        Row (children: <Widget>[
          Radio(value:1, groupValue: groupValue, onChanged: (e)=>{checkAnswer(e!)}),
          Text ("True", style:TextStyle(color: Colors.white),),
          Radio(value:0, groupValue: groupValue, onChanged: (e)=>{checkAnswer(e!)}),
          Text ("False",style:TextStyle(color: Colors.white),),
        ],),
        TextButton(onPressed: ()=> {setState((){

          if (currentQuestion < questions.length -1){
            currentQuestion++;
          } else{
            currentQuestion = 0;
            score=0;
          }
          groupValue=2;
          result = "";

        })},
        child: Container(
          padding: EdgeInsets.symmetric(vertical:8.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color:const Color.fromARGB(255, 52, 5, 60),
            borderRadius: BorderRadius.circular(8.0),
          ),
        child: Text ("Next", style: TextStyle(fontSize: 18.0, color:Colors.white,
        ),)),
        ),
        SizedBox(height: 18.0),
        Container(
          padding: EdgeInsets.all (8.0),
          decoration: BoxDecoration(
            color: result =="Correct!"? const Color.fromARGB(255, 76, 175, 132) : result =="Incorrect!"? const Color.fromARGB(255, 244, 73, 54): Colors.transparent,    
            borderRadius: BorderRadius.circular(8.0),     ),
            child: Text(result, style: const TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, color:Colors.white,),),
        ),

        SizedBox(height:20.0),
        Text ("Score: $score", style: TextStyle(fontSize: 40.0, fontWeight:FontWeight.bold, color: const Color.fromARGB(153, 78, 8, 110)),),
      ],
      ),),
    );
  }
}

