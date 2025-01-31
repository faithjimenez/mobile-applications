//to write a comment use two forward slashes 
// Variables and Data Types
//Control Flows and Looping 
//Functions and Methods
//void creates a function which does not return a value
//main() name of the function (reserved for dart)
//{code to be executed when the function runs} in the brackets!
void main() {
  //this is how you call the function
 greeting();
 print(addTwo(100));
 int result = addTwo(30);
 print(result);

 var inferredString= "William";

 String explicitString = "Jattin";

 print (inferredString + " " + explicitString);

 //null safety-> when we try to print variable with no value, it doesnt print, no error should appear
 int? someNumber;
 print (someNumber);
 someNumber= 12;
 print(someNumber);
 //late keyword
 late int willBeNumber;
 //
 int? goals;
 //control the flow of the program to avoid error
 if (goals != null){ 
  print (goals +2); 
  } else {
    print ("the variable goals is null");
  }
 
 //Built-in data types
 //Numeric
 int age = 21;
 num count = 3;
 double temp=29.9;
 //Booleans (true or false)
 bool isReady = false; 
 //Collections: lists, arrays and maps
 //Strings for expressing text
 String school = "University of Miami";
 print ("My school is" + school);

 //using placeholders  to insert variables inside strings 
 print ("My school is $school");

 // Built in types operations
 print ("my school name has ${school.length} characters");

 if(school.length > 20){
  print ("This name is really long");
  }else{
    print("Your school has a short name");
 }
 
  //control operators:
  // > greather than
  // >= greater than or equals
  //<= less than or equals
  //== equals
  // != not equal
  // % modulus 
  // Arithmetic operators:
  // +
  //-
  //* multiplication
  // / division
  // % modulus
  //Math Shortcuts
  int x = 10;
  x = x + 5; // 15
  //same as
  x += 5; //20 -= *= /= 
  // ! the opposite of an expression  
  bool isHere= false;// !isHere (flips value to true and vice versa)
  // || or operator at least one condition must be true
  if(isHere || (school.length < 10 )){
    //do some code
  }

  // and operator all all conditions must be  true
  if(!isHere && (school.length < 10 )){
    //do some code
  }

  //while loops
  int counter = 0;
  while (counter < 2){
    print(counter);
    counter++; 
  }

 //do while
 do{
  print (counter);
  counter++;
 } while(counter < 20);

}

//variable declaration:
//type identifier/name= value; 
//Dynamic Types:
// var identifier/name=value;
//custom functions
//if you want to execute custom functions, create it outside of main, but call it in main (look at main to see how i called it)
void greeting(){
print ("hello");
}
//Operation with options or parameters
int addTwo(int number){
return number + 2;

}

