void main(){
  emiteNumbers()
    .listen((value){
      print('Stream value: $value');
    });
  
  
  
}

Stream emiteNumbers() async*{
  final valueToEmit = [1,2,3,4,5];
  for(int i in valueToEmit ){
    await Future.delayed( const Duration(seconds: 1));
    yield i;
    
    
  }
  
  
  
}