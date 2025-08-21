void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive= true;
  //final abilities =<String>['impostor'];
  final List <String> abilities =['impostor'];
  final sprites =<String>['ditto/fron.png','ditto/back.png'];
  
  // Continuacion 
  //dynamic == null ;por defecto 
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6,7};
  errorMessage = ()=> true;
  errorMessage = null ;
  
  //errorMessage +=1; esta mal 
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  
  """);
  
  
  
}