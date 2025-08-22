  void main(){
   print(greetEveryone());
  print('Suma : ${addTwoNumbers(10,20)}');
   print ('Suma: ${addTwoNumbersOptional(10,28)}');
   print(greetPerson(name: 'Darwin',message: 'Hi,'));
  
}
//Funcion
//String greetEveryone() {
  
 // return 'Hello everyone';
//}
String greetEveryone() => 'Hello everyone'; //funcion labda

//FUNCION CLASICA
//int addTwoNumbers(int a, int b){
  //return a+b;
//}

int addTwoNumbers(int a, int b) =>  a+b;

int addTwoNumbersOptional(int a, [ int b =0 ]){
  
 // b = b ?? 0; //o tambien b ??=0 // son otras formas
 // b = b+1; // o tambien b++;
  
  return a+b;
} 

String greetPerson( {required String name, String message ='Hola,'} ){
  
  return '$message Darwin';
}

