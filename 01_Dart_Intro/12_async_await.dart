import 'dart:async'; // Required for Future.delayed and Future

void main() async{
  print('Inicio de programa');
  try{
      final value =await httpGet('http://carwin-turpo/main');
  print(value);

  }catch (err){
    print('Tenemos un error: $err');
  }
  
  final value =await httpGet('http://carwin-turpo/main');
  print(value);

  print('Fin de programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion';
  
  
 // return 'Tenemos un valor de la peticion';
}