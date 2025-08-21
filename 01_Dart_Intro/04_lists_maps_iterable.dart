void main(){
  final numbers =[1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  
  print('Lista original $numbers');
  print('Lista original ${numbers.toSet().toList()}'); // lo oredena y quita redundancia
  print('Length ${numbers.length}');
  print('Index0: ${numbers[0]}'); //obtener 1valor
  print('Index0: ${numbers.first}');
  print('Reversed: ${numbers.reversed}'); //es un iterravle
  
  final reversedNumbers = numbers.reversed;
  
  print('Iterable $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); // valores unicos da set
  
  final numbersGreaterThan5 = numbers.where((int num) {
    return num>5; // true
  });
  
   print('>5 iterable:  $numbersGreaterThan5 '); 
   print('>5 set:  ${numbersGreaterThan5.toSet()} '); 

}